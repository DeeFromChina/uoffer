package com.offer.util;

import java.io.File;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;
import org.springframework.beans.factory.annotation.Autowired;

import com.offer.dao.common.BaseDao;
import com.offer.interceptor.InitDataLoadFilter;

public class InitMappingXml {

//	public static void main(String[] args){
//		String systemPath = System.getProperty("user.dir");
//		String path = systemPath+"\\web\\WEB-INF\\classes\\properties\\mapping_FileTable.xml";
//		Map<String, Object> map = new HashMap<String, Object>();
//		try {
//			init(map, path);
//			InitTypeMappingFilter.initTypeMapping.putAll(map);
//			mappingValue("FileTable", "save", "test1", "345");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	public static void init(Map<String, Object> map, String path) throws Exception {
		try {
			XMLWriter writer = null;// 声明写XML的对象
			SAXReader reader = new SAXReader();
			OutputFormat format = OutputFormat.createPrettyPrint();
			format.setEncoding("GBK");// 设置XML文件的编码格式
			// 读取文件 转换成Document
			Document document = reader.read(new File(path));
			// 获取根节点元素对象
			Element root = document.getRootElement();
			// 遍历
			mappingNodes(root, map);
			System.out.println(new Date() + " [initmapping] :" + path);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 遍历当前节点下的所有节点(mapping)
	private static void mappingNodes(Element node, Map<String, Object> map) throws Exception {
		if ("mapping".equals(node.getName())) {
			try {
				if (node.getParent() == null) {
					throw new Exception(new Date() + " mapping结构出错 ");
				} else if (!"mappingGroup".equalsIgnoreCase(node.getParent().getName())) {
					throw new Exception(new Date() + " mapping结构出错 ");
				} else if (node.getParent().attribute("id") == null
						|| "".equals(node.getParent().attribute("id").getValue())) {
					throw new Exception(new Date() + " mappingGroupId出错 ");
				}
			} catch (Exception e) {
				e.printStackTrace();
				return;
			}

			String mappingGroupId = node.getParent().attribute("id").getValue();
			Map<String, Object> mappingGroupMap = new HashMap<String, Object>();
			if (map.get(mappingGroupId) != null) {
				mappingGroupMap = (Map<String, Object>) map.get(mappingGroupId);
			}
			String mappingId = null;
			String mappingClass = null;
			String mappingMethod = null;
			Map<String, String> mappingMap = new HashMap<String, String>();
			List<Attribute> list = node.attributes();
			for (Attribute attribute : list) {
				if ("id".equals(attribute.getName())) {
					if (attribute.getValue() == null || "".equals(attribute.getValue())) {
						throw new Exception(new Date() + " mappingId有误 :" + attribute.getValue());
					}
					mappingId = attribute.getValue();
				} else if ("class".equals(attribute.getName())) {
					if (attribute.getValue() == null || "".equals(attribute.getValue())) {
						throw new Exception(new Date() + " mappingClass有误 :" + attribute.getValue());
					}
					mappingClass = attribute.getValue();
				} else if ("method".equals(attribute.getName())) {
					if (attribute.getValue() == null || "".equals(attribute.getValue())) {
						throw new Exception(new Date() + " mappingMethod有误 :" + attribute.getValue());
					}
					mappingMethod = attribute.getValue();
				}
			}
			mappingMap.put("mappingId", mappingId);
			mappingMap.put("mappingClass", mappingClass);
			mappingMap.put("mappingMethod", mappingMethod);
			if (mappingGroupMap.get(mappingId) != null) {
				throw new Exception(new Date() + " mappingId重复 :" + mappingId);
			}
			mappingGroupMap.put(mappingId, mappingMap);
			map.put(mappingGroupId, mappingGroupMap);
		}
		Iterator<Element> iterator = node.elementIterator();
		while (iterator.hasNext()) {
			Element e = iterator.next();
			mappingNodes(e, map);
		}
	}
	
	public static void mappingValue(BaseDao baseDao, String groupId, String mappingId, Object...objects){
		if(InitDataLoadFilter.initTypeMapping.get(groupId) == null){
			return;
		}
		Map<String, Object> mappingGroupMap = (Map<String, Object>) InitDataLoadFilter.initTypeMapping.get(groupId);
		if(mappingGroupMap.get(mappingId) == null){
			return;
		}
		Map<String, String> mappingMap = (Map<String, String>) mappingGroupMap.get(mappingId);
		String mappingClass = mappingMap.get("mappingClass");
		String mappingMethod = mappingMap.get("mappingMethod");
		try {
			Class t = Class.forName(mappingClass);
			Object o = t.newInstance();
			Method[] methods = t.getMethods();
			List<Field>  list = Arrays.asList(t.getDeclaredFields());
			for(int i = 0; i < list.size(); i++){
				Field field = list.get(i);
				field.setAccessible(true);// 设置些属性是可以访问的
				if(field.isAnnotationPresent(Autowired.class)){
					Class autoClass = field.getType();//需要被注入的接口类
					Object autoO = autoClass.newInstance();
					field.set(autoO, autoO);
				}
			}
//			for(Method method : methods){
//				if("setBaseDao".equals(method.getName())){
//					method.invoke(o, baseDao);
//				}
//			}
			for(Method method : methods){
				if(mappingMethod.equals(method.getName())){
					if(CorrectParam(method, objects, groupId, mappingId, mappingClass, mappingMethod)){
						method.invoke(o, objects);
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	
	/**
	 * 是否正确的参数形式
	 * @return
	 */
	private static boolean CorrectParam(Method method, Object[] objects, String groupId, String mappingId, String mappingClass, String mappingMethod) throws Exception{
		if(method.getGenericParameterTypes().length != objects.length){
			throw new Exception(new Date() + " 参数数量传递不一致 :[mappingGroupId="+groupId+"][mappingId="+mappingId+"][mappingClass="+mappingClass+"][mappingMethod="+mappingMethod+"]");
		}
		Class[] paramClasses = method.getParameterTypes();
		for(int i = 0; i < objects.length;  i++){
			if(!paramClasses[i].getName().equals(objects[i].getClass().getName())){
				System.err.println("参数:"+objects[i]+" 参数类型:"+paramClasses[i].getName()+" 传参类型:"+objects[i].getClass().getName());
				throw new Exception(new Date() + " 参数类型传递不一致 :[mappingGroupId="+groupId+"][mappingId="+mappingId+"][mappingClass="+mappingClass+"][mappingMethod="+mappingMethod+"]");
			}
		}
		return true;
	}
}

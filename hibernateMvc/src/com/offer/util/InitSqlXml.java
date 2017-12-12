package com.offer.util;

import java.io.File;
import java.util.ArrayList;
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

import com.offer.interceptor.InitDataLoadFilter;

public class InitSqlXml {
	
	public static void main(String[] args){
		String systemPath = System.getProperty("user.dir");
		String path = systemPath+"\\web\\WEB-INF\\classes\\properties\\mapping_FileTable.xml";
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			init(map, path, "mapping");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void init(Map map, String path, String type) throws Exception {
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
			if("sql".equalsIgnoreCase(type)){
				nodes(root,map);
			}else if("mapping".equalsIgnoreCase(type)){
				mappingNodes(root,map);
			}
			System.out.println(new Date()+" [initsql] :"+path);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 遍历当前节点下的所有节点（sql）
	private static void nodes(Element node, Map<String, String> map) {
		if("sql".equals(node.getName())){
			List<Attribute> list = node.attributes();
			for (Attribute attribute : list) {
				if("id".equals(attribute.getName())){
					try {
						if(map.get(attribute.getValue()) != null){
							throw new Exception(new Date()+" sqlId重复 :"+attribute.getValue());
						}else{
							map.put(attribute.getValue(), node.getText());
						}
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
		Iterator<Element> iterator = node.elementIterator();
		while (iterator.hasNext()) {
			Element e = iterator.next();
			nodes(e, map);
		}
	}
	
	// 遍历当前节点下的所有节点(mapping)
	private static void mappingNodes(Element node, Map<String, Object> map) throws Exception{
		if("mapping".equals(node.getName())){
			try {
				if(node.getParent() == null){
					throw new Exception(new Date()+" mapping结构出错 ");
				}else if(!"mappingGroup".equalsIgnoreCase(node.getParent().getName())){
					throw new Exception(new Date()+" mapping结构出错 ");
				}
			} catch (Exception e) {
				e.printStackTrace();
				return;
			}
			
			node.getParent().attribute("id");
			Map<String, Object> mappingGroupMap = new HashMap<String, Object>();
//			if(map.get(parentName) != null){
//				mappingGroupMap = (Map<String, Object>) map.get(parentName);
//			}
			String mappingId = null;
			String mappingClass = null;
			String mappingMethod = null;
			Map<String, String> mappingMap = new HashMap<String, String>();
			List<Attribute> list = node.attributes();
			for (Attribute attribute : list) {
				if("id".equals(attribute.getName())){
					if(attribute.getValue() == null || "".equals(attribute.getValue())){
						throw new Exception(new Date()+" mappingId有误 :"+attribute.getValue());
					}
					mappingId = attribute.getValue();
				}else if("class".equals(attribute.getName())){
					if(attribute.getValue() == null || "".equals(attribute.getValue())){
						throw new Exception(new Date()+" mappingClass有误 :"+attribute.getValue());
					}
					mappingClass = attribute.getValue();
				}else if("method".equals(attribute.getName())){
					if(attribute.getValue() == null || "".equals(attribute.getValue())){
						throw new Exception(new Date()+" mappingMethod有误 :"+attribute.getValue());
					}
					mappingMethod = attribute.getValue();
				}
			}
			mappingMap.put("mappingId", mappingId);
			mappingMap.put("mappingClass", mappingClass);
			mappingMap.put("mappingMethod", mappingMethod);
			if(mappingGroupMap.get(mappingId) != null){
				throw new Exception(new Date()+" mappingId重复 :"+mappingId);
			}
			mappingGroupMap.put(mappingId, mappingMap);
		}
//		map.put(key, mappingGroupMap);
		Iterator<Element> iterator = node.elementIterator();
		while (iterator.hasNext()) {
			Element e = iterator.next();
			mappingNodes(e, map);
		}
	}
	
	public static String buildSql(Map<String, String> params, String sqlId){
		String sql = InitDataLoadFilter.initData.get(sqlId);
		for(Map.Entry<String, String>  entry : params.entrySet()){
			sql = sql.replace("{#"+entry.getKey()+"}", entry.getValue());
		}
		System.out.println(sql);
		return sql;
	}
}

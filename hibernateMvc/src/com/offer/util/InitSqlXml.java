package com.offer.util;

import java.io.File;
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
	
	public static void init(Map<String, String> map, String path) throws Exception {
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
			nodes(root,map);
			System.out.println(new Date()+" [initsql] :"+path);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// 遍历当前节点下的所有节点
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
	
	public static String buildSql(Map<String, String> params, String sqlId){
		String sql = InitDataLoadFilter.initData.get(sqlId);
		for(Map.Entry<String, String>  entry : params.entrySet()){
			sql = sql.replace("{#"+entry.getKey()+"}", entry.getValue());
		}
		System.out.println(sql);
		return sql;
	}
}

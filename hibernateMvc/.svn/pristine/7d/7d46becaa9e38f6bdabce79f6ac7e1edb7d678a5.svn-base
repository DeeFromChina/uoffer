package com.offer.util.impl;

import java.io.File;
import java.util.ArrayList;
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
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.offer.util.Dom4jXml;
@Repository
@Service("dom4jXml")
public class Dom4jXmlImpl implements Dom4jXml {
	
	private List<String> paramList = new ArrayList<String>();
	
	private Map<String, String> valueMap = new HashMap<String, String>();
	
	private static String SQL = "sql";
	private static String GROUPBY = "groupBy";
	private static String ORDERBY = "orderBy";
	private static String VALUE = "value";
	
	private static Map<String, String> byMap = new HashMap<String, String>();
	
	private static void initByMap(){
		byMap.put(GROUPBY, " GROUP BY ");
		byMap.put(ORDERBY, " ORDER BY ");
	}

	public String initSqlXml(String path, Map<String, String> params) throws Exception {
		try {
		   paramList.clear();
			initByMap();
			valueMap.putAll(params);
			XMLWriter writer = null;// 声明写XML的对象
			SAXReader reader = new SAXReader();
			OutputFormat format = OutputFormat.createPrettyPrint();
			format.setEncoding("GBK");// 设置XML文件的编码格式
			Document document = reader.read(new File(path));
			Element root = document.getRootElement();
			StringBuffer sql = new StringBuffer();
			return listNodes(root, sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	private String listNodes(Element node, StringBuffer sql) {
		String sqls = "";
		List<Attribute> list = node.attributes();
		if (!(node.getTextTrim().equals(""))) {
			sql.append(node.getText());
		}
		if(SQL.equals(node.getName())){
			listAttributes(list, sql, SQL);
			listAttributes(list, sql, GROUPBY);
			listAttributes(list, sql, ORDERBY);
		}
		if("param".equals(node.getName())){
			listAttributes(list, sql, VALUE);
		}
		Iterator<Element> iterator = node.elementIterator();
		while (iterator.hasNext()) {
			Element e = iterator.next();
			listNodes(e, sql);
		}
		String xmlsql = sql.toString();
		for(String param : paramList){
			if(valueMap.get(param) != null){
			   String p = "{#" + param + "}";
				sqls = xmlsql.replace( p, valueMap.get(param));
				xmlsql = sqls;
			}
		}
		return sqls;
	}
	
	private void listAttributes(List<Attribute> list, StringBuffer sql, String condition){
		for (Attribute attribute : list) {
			if(VALUE.equals(attribute.getName())){
				String param = attribute.getValue();
				paramList.add(param);
			}else if(condition.equals(attribute.getName())){
				sql.append(byMap.get(condition) + " " + attribute.getValue());
			}
		}
	}
	
}
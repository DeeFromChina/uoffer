package com.offer.util.impl;

import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.io.OutputFormat;
import org.dom4j.io.SAXReader;
import org.dom4j.io.XMLWriter;

import com.offer.util.Dom4jXml;

public class Dom4jXmlTestImpl{

	private String systemPath = System.getProperty("user.dir");

	public static void main(String[] args) {
		try {
			String path = System.getProperty("user.dir");
			path += "\\web\\sql\\test.xml";
			File file = new File(path);
			if (file.exists()) {
				System.out.println(path);
			}
			new test().initSqlXml(path);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
	class test {
		public void initSqlXml(String path) throws Exception {
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
				System.out.println(listNodes(root));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// 遍历当前节点下的所有节点
		private String listNodes(Element node) {
			StringBuffer sql = new StringBuffer();
			System.out.println("当前节点的名称：" + node.getName());
			// 首先获取当前节点的所有属性节点
			List<Attribute> list = node.attributes();
			// 遍历属性节点
			for (Attribute attribute : list) {
				System.out.println("属性" + attribute.getName() + ":"
						+ attribute.getValue());
			}
			// 如果当前节点内容不为空，则输出
			if (!(node.getTextTrim().equals(""))) {
				System.out.println(node.getName() + "：" + node.getText());
			}
			// 同时迭代当前节点下面的所有子节点
			// 使用递归
			Iterator<Element> iterator = node.elementIterator();
			while (iterator.hasNext()) {
				Element e = iterator.next();
				sql.append("1");
				listNodes(e);
			}
			return sql.toString();
		}
	}

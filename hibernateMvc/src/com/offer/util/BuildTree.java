package com.offer.util;

import java.lang.reflect.Method;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.model.baseData.Job;
import com.offer.model.util.Tree;

public class BuildTree extends BaseUtil{
	
	@Autowired
	private ConUtil conUtil;
	
	public static void main(String[] args){
		List<Job> jobs = new ArrayList<Job>();
		Job job = new Job();
		job.setId(1);
		jobs.add(job);
//		setTree(jobs, "", "");
		System.exit(0);
	}
	
	/**
	 * @param cls:目标list
	 * @param title:树显示的名称对应的List的列名
	 * @param value:树隐藏的值对应的List的列名
	 * (List<job> jobs, String name, String id)name,id是job的属性
	 * @return
	 */
	public static List<Tree> setTree(List<?> cls, String title, String value, String pid){
		List<Tree> trees = new ArrayList<Tree>();
		if(cls.size() == 0){
			return trees;
		}
		Method[] methods = null;
		String Key = "get" + value.substring(0, 1).toUpperCase() + value.substring(1);
		String Value = "get" + title.substring(0, 1).toUpperCase() + title.substring(1);
		String Pid = "get" + pid.substring(0, 1).toUpperCase() + pid.substring(1);
		
		try {
			for(int j = 0; j < cls.size(); j++){
				methods = cls.get(j).getClass().getMethods();
				Tree tree = new Tree();
				for(int i = 0; i < methods.length; i++){
					if (methods[i].getName().equalsIgnoreCase(Key)){
						Object object = methods[i].invoke(cls.get(j), (Object[]) null);
						tree.setValue(returnString(object));
					}
					if (methods[i].getName().equalsIgnoreCase(Value)) {
						Object object = methods[i].invoke(cls.get(j), (Object[]) null);
						tree.setTitle(returnString(object));
					}
					if (methods[i].getName().equalsIgnoreCase(Pid)) {
						Object object = methods[i].invoke(cls.get(j), (Object[]) null);
						tree.setPatherId(returnString(object));
					}
				}
				tree.setVisibility("1");
				trees.add(tree);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return trees;
	}

	public static List<Tree> buildTree(List<Tree> Data){
		List<Tree> trees = new ArrayList<Tree>();
		for(Tree tree : Data){
			String pid = tree.getPatherId();
			if(pid == null || "".equals(pid)){
				continue;
			}
			for(Tree parentTree : Data){
				//找到父节点
				if(parentTree.getValue() != null && parentTree.getValue().equals(pid)){
					if(parentTree.getContent() == null){
						parentTree.setContent(new ArrayList<Tree>());
					}
					parentTree.getContent().add(tree);
				}
			}
		}
		for(Tree tree : Data){
			String pid = tree.getPatherId();
			if(pid == null || "".equals(pid)){
				trees.add(tree);
				continue;
			}
		}
		return trees;
	}
	
	/**
	 * @param Data	数据
	 * @param count 层数
	 * 
	 * 只取多少层的数据(count=2,只取1、2层的数据)
	 * 
	 */
	public static void selectTree(List<Tree> Data, int count){
		if(count == 0){
			return;
		}
		for(Tree tree : Data){
			if(count == 1){
				tree.setContent(null);
				continue;
			}
			if(tree.getContent() != null){
				selectTree(tree.getContent(), count-1);
			}
		}
		return;
	}
	
	/**
	 * @param Data	数据
	 * @param id	在某id下属
	 * 
	 * 只取某id下属的数据
	 * 
	 */
	public static List<Tree> selectTreeOne(List<Tree> Data, String id){
		List<Tree> trees = new ArrayList<Tree>();
		for(Tree tree : Data){
			if(tree.getValue().equals(id)){
				trees = tree.getContent();
			}
		}
		if(trees.size() == 0){
			for(Tree tree : Data){
				trees = selectTreeOne(tree.getContent(), id);
				if(trees.size() > 0){
					break;
				}
			}
		}
		return trees;
	}
}

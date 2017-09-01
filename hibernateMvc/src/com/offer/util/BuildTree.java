package com.offer.util;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.offer.model.baseData.Job;
import com.offer.model.util.Tree;

public class BuildTree {
	
	@Autowired
	private ConUtil conUtil;
	
	public static void main(String[] args){
		List<Job> jobs = new ArrayList<Job>();
		Job job = new Job();
		job.setId(1);
		jobs.add(job);
		setTree(jobs, "", "");
		System.exit(0);
	}
	
	/**
	 * @param cls:目标list
	 * @param title:树显示的名称对应的List的列名
	 * @param value:树隐藏的值对应的List的列名
	 * (List<job> jobs, String name, String id)name,id是job的属性
	 * @return
	 */
	public static List<Tree> setTree(List<?> cls, String title, String value){
		if(cls.size() == 0){
			return null;
		}
		Class<?> t = null;
		Method[] methods = null;
		if(cls.size() > 0){
			t = cls.get(0).getClass();
			methods = t.getMethods();
		}
		String Key = "set" + value.substring(0, 1).toUpperCase() + value.substring(1);
		String Value = "set" + title.substring(0, 1).toUpperCase() + title.substring(1);
		for(int i = 0; i < methods.length; i++){
			 if (methods[i].getName().equalsIgnoreCase(Key)){
				 Class type = methods[i].getParameterTypes()[0];
				 Object retValue = null;
	             if (!type.getName().equalsIgnoreCase("java.lang.String") || "".equals(value) || value == null) retValue = null;
//	             else retValue = conUtil.parseParamenter2(type, value);
//	             methods[i].invoke(target, new Object[] { retValue });
			 }
		}
		for(int i = 0; i < cls.size(); i++){
			String 
		}
//		for(Job job : jobs){
//			Tree tree = new Tree();
//			tree.setTitle(job.getName());
//			tree.setValue(String.valueOf(job.getId()));
//			tree.setVisibility("1");
//			tree.setPatherId(job.getPid() == null ? null : String.valueOf(job.getPid()));
//			trees.add(tree);
//		}
//		returnTree = BuildTree.buildTree(trees);
		return null;
	}

	public static List<Tree> buildTree(List<Tree> Data){
		List<Tree> trees = new ArrayList<Tree>();
		for(Tree tree : Data){
			String pid = tree.getPatherId();
			if(pid == null){
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
			if(pid == null){
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

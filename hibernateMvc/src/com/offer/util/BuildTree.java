package com.offer.util;

import java.util.List;

import com.offer.model.util.Tree;

public class BuildTree {

	public static List<Tree> buildTree(List<Tree> trees){
		for(Tree tree : trees){
			String pid = tree.getPatherId();
			for(Tree parentTree : trees){
				//找到父节点
				if(parentTree.getValue() != null && parentTree.getValue().equals(pid)){
					parentTree.getContent().add(tree);
				}
			}
		}
		return trees;
	}
}

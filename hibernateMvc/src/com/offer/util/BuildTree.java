package com.offer.util;

import java.util.ArrayList;
import java.util.List;

import com.offer.model.util.Tree;

public class BuildTree {

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
}

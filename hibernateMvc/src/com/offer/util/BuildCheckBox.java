package com.offer.util;

import java.util.ArrayList;
import java.util.List;

import com.offer.model.util.CheckBox;

public class BuildCheckBox {

	public static List<CheckBox> buildCheckBox(List<CheckBox> Data){
		List<CheckBox> checkBoxs = new ArrayList<CheckBox>();
		for(CheckBox checkBox : Data){
			String pid = checkBox.getPatherId();
			if(pid == null){
				continue;
			}
			for(CheckBox parentCheckBox : Data){
				//找到父节点
				if(parentCheckBox.getValue() != null && parentCheckBox.getValue().equals(pid)){
					if(parentCheckBox.getContent() == null){
						parentCheckBox.setContent(new ArrayList<CheckBox>());
					}
					parentCheckBox.getContent().add(checkBox);
				}
			}
		}
		for(CheckBox checkBox : Data){
			String pid = checkBox.getPatherId();
			if(pid == null){
				checkBoxs.add(checkBox);
				continue;
			}
		}
		return checkBoxs;
	}
}

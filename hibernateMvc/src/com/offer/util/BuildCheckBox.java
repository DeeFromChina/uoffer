package com.offer.util;

import java.util.ArrayList;
import java.util.List;

import com.offer.model.util.CheckBox;
import com.sun.org.apache.xml.internal.security.utils.IgnoreAllErrorHandler;

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
	
	/**
	 * @param Data	数据
	 * @param count 层数
	 * 
	 * 只取多少层的数据(count=2,只取1、2层的数据)
	 * 
	 */
	public static void selectCheckBox(List<CheckBox> Data, int count){
		if(count == 0){
			return;
		}
		for(CheckBox checkBox : Data){
			if(count == 1){
				checkBox.setContent(null);
				continue;
			}
			if(checkBox.getContent() != null){
				selectCheckBox(checkBox.getContent(), count-1);
			}
		}
		return;
	}
}

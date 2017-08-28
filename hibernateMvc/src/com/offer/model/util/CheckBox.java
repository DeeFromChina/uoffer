package com.offer.model.util;

import java.util.List;

public class CheckBox {

	private String title;
	
	private String value;
	
	private String type;
	
	private List<CheckBox> content;
	
	private String patherId;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<CheckBox> getContent() {
		return content;
	}

	public void setContent(List<CheckBox> content) {
		this.content = content;
	}

	public String getPatherId() {
		return patherId;
	}

	public void setPatherId(String patherId) {
		this.patherId = patherId;
	}
}

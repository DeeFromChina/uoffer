package com.offer.model.util;

import java.util.List;

public class Tree {

	private String title;
	
	private String value;
	
	private String visibility;
	
	private String click;
	
	private List<Tree> content;
	
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

	public String getVisibility() {
		return visibility;
	}

	public void setVisibility(String visibility) {
		this.visibility = visibility;
	}

	public String getClick() {
		return click;
	}

	public void setClick(String click) {
		this.click = click;
	}

	public List<Tree> getContent() {
		return content;
	}

	public void setContent(List<Tree> content) {
		this.content = content;
	}

	public String getPatherId() {
		return patherId;
	}

	public void setPatherId(String patherId) {
		this.patherId = patherId;
	}

}

package com.offer.controller;

import java.io.File;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.codehaus.jackson.annotate.JsonAnyGetter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSON;
import com.offer.model.baseData.FileTable;
import com.offer.service.baseData.FileTableService;
import com.offer.util.EncodeUtil;
import com.offer.util.FileUtils;

@Controller
public class FileManagerController extends TinyBuilderController {
	
	@Autowired
	private FileTableService fileTableService;

	@ResponseBody
	@RequestMapping(value = "/fileManager", produces = "application/json")
	public Map<String, Object> doAction(HttpServletRequest request, @RequestParam("uploadFile") MultipartFile[] files) {
		try {
			setMap(request, null);
			Object forward = null;
			String action = form.get("action").toString();
			
			if("fileUpload".equalsIgnoreCase(action)) forward = fileUpload(files);
			else if("fileDel".equalsIgnoreCase(action)) forward = fileDel();
			
			return toJson(forward);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	private Object fileUpload(MultipartFile[] files){
		if(files.length == 0){
			return null;
		}else{
			try {
				checkRequired("type", "tableName", "tableId");
				form.put("FILE_PATH", FILE_PATH);
				form.put("type", returnString(form.get("type")));
				form.put("userId", user.getId());
				fileTableService.uploadFileTable(form, files);
				return SUCCESS;
			} catch (Exception e) {
				e.printStackTrace();
				return addMessage(e.getMessage());
			}
		}
	}
	
	private Object fileDel(){
		return null;
	}
	
	private Object test(){
		return null;
	}
}

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
				
				String date = sdf.format(new Date());
				String filePath = FILE_PATH + File.separator + form.get("type") + File.separator + date + File.separator;
				String tableName = returnString(form.get("tableName"));
				int tableId = EncodeUtil.changeId(returnString(form.get("tableId")));
				
				File dirFile = new File(filePath);
				if(!dirFile.exists() || !dirFile.isDirectory()){
					dirFile.mkdirs();
				}
				
				for(MultipartFile file : files){
//					无效
//					CommonsMultipartFile cf= (CommonsMultipartFile)file; 
//					DiskFileItem fi = (DiskFileItem)cf.getFileItem(); 
//					File f = fi.getStoreLocation();
//					if(!f.exists()){
//						continue;
//					}
					
					String endless = file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
					String cName = String.valueOf(System.currentTimeMillis());
					String fileRealName = file.getOriginalFilename();
					
					FileTable fileTable = new FileTable();
					fileTable.setFileType(returnString(form.get("type")));
					fileTable.setFileNewName(cName+endless);
					fileTable.setCreateTime(new Date());
					fileTable.setFileSize(file.getSize());
					fileTable.setFileSuffix(endless);
					fileTable.setFileRealName(fileRealName);
					fileTable.setCreateUserId(user.getId());
					fileTable.setFilePath(filePath + cName + endless);
					fileTable.setTableId(tableId);
					fileTable.setTableName(tableName);
					fileTableService.uploadFileTable(fileTable, file, filePath + cName + endless);
				}
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

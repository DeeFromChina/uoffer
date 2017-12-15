package com.offer.service.baseData;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.offer.model.baseData.FileTable;

public interface FileTableService {

	public FileTable findFileTable(Map<String, Object> param) throws Exception;
	
	public List<FileTable> findFileTables(Map<String, Object> param) throws Exception;
	
	public void saveFileTable(FileTable fileTable) throws Exception;
	
	public void updateFileTable(FileTable fileTable) throws Exception;
	
	public void uploadFileTable(Map<String, Object> form, MultipartFile[] files) throws Exception;
	
}

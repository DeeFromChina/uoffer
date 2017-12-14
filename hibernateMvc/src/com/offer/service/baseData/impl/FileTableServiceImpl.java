package com.offer.service.baseData.impl;

import java.io.File;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.offer.dao.common.BaseDao;
import com.offer.model.baseData.FileTable;
import com.offer.service.baseData.FileTableService;
import com.offer.util.FileUtils;

@Service("fileTableService")
public class FileTableServiceImpl implements FileTableService{

	@Autowired
	private BaseDao baseDao;
	
	@Override
	public FileTable findFileTable(Map<String, Object> param) throws Exception {
		List<FileTable> fileTables = (List<FileTable>) baseDao.findField(FileTable.class, param);
		if(fileTables.size() == 1){
			return fileTables.get(0);
		}
		return null;
	}

	@Override
	public List<FileTable> findFileTables(Map<String, Object> param) throws Exception {
		return (List<FileTable>) baseDao.findField(FileTable.class, param);
	}

	@Override
	public void saveFileTable(FileTable fileTable) throws Exception {
		baseDao.save(fileTable);
	}

	@Override
	public void updateFileTable(FileTable fileTable) throws Exception {
		baseDao.update(fileTable);
	}
	
	@Override
	public void uploadFileTable(FileTable fileTable, MultipartFile file, String FileName) throws Exception {
		baseDao.save(fileTable);
		FileUtils.MultipartFileUpload(file, FileName);
	}
	
	@Override
	public void test(String t, Integer i) throws Exception {
		System.out.println(t+i.toString());
	}

}

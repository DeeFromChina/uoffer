package com.offer.service.baseData.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.offer.dao.common.BaseDao;
import com.offer.model.baseData.FileTable;
import com.offer.service.baseData.FileTableService;

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

}

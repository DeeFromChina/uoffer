package com.offer.service.baseData.impl;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.offer.dao.common.BaseDao;
import com.offer.model.baseData.FileTable;
import com.offer.service.baseData.FileTableService;
import com.offer.util.BaseUtil;
import com.offer.util.EncodeUtil;
import com.offer.util.FileUtils;
import com.offer.util.InitMappingXml;

@Service("fileTableService")
public class FileTableServiceImpl extends BaseServiceImpl implements FileTableService{

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
	public void uploadFileTable(Map<String, Object> form, MultipartFile[] files) throws Exception {
		
		String FILE_PATH = form.get("FILE_PATH").toString();
		String date = sdf.format(new Date());
		String filePath = FILE_PATH + File.separator + form.get("type") + File.separator + date + File.separator;
		String tableName = form.get("tableName").toString();
		int tableId = EncodeUtil.changeId(form.get("tableId").toString());
		
		File dirFile = new File(filePath);
		if(!dirFile.exists() || !dirFile.isDirectory()){
			dirFile.mkdirs();
		}
		
		List<FileTable> fileTables = new ArrayList<FileTable>();
		for(MultipartFile file : files){
//			无效
//			CommonsMultipartFile cf= (CommonsMultipartFile)file; 
//			DiskFileItem fi = (DiskFileItem)cf.getFileItem(); 
//			File f = fi.getStoreLocation();
//			if(!f.exists()){
//				continue;
//			}
			
			String endless = file.getOriginalFilename().substring(file.getOriginalFilename().indexOf("."));
			String cName = String.valueOf(System.currentTimeMillis());
			String fileRealName = file.getOriginalFilename();
			
			FileTable fileTable = new FileTable();
			fileTable.setFileType(form.get("type").toString());
			fileTable.setFileNewName(cName+endless);
			fileTable.setCreateTime(new Date());
			fileTable.setFileSize(file.getSize());
			fileTable.setFileSuffix(endless);
			fileTable.setFileRealName(fileRealName);
			fileTable.setCreateUserId((int)form.get("userId"));
			String fileSqlPath = filePath.substring(filePath.indexOf("\\upload")+1);
			fileTable.setFilePath(fileSqlPath + cName + endless);
			fileTable.setTableId(tableId);
			fileTable.setTableName(tableName);
			baseDao.save(fileTable);
			fileTables.add(fileTable);
			FileUtils.MultipartFileUpload(file, filePath + cName + endless);
		}
		if(form.get("mapping") != null){
			BaseUtil.checkRequired(form.get("mappingGroup"), form.get("mapping"));
			InitMappingXml.mappingValue(baseDao, form.get("mappingGroup").toString(), form.get("mapping").toString(), fileTables, form);
		}
	}

}

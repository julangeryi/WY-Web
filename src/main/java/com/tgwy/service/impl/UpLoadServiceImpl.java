package com.tgwy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tgwy.dao.UpLoadDao;
import com.tgwy.entity.UpLoadEntity;
import com.tgwy.service.UpLoadService;

@Service("upLoadService")
public class UpLoadServiceImpl implements UpLoadService {
	
	@Resource
	private UpLoadDao upLoadDao;
	
	public List<UpLoadEntity> getByUpLoadUserName(String upLoadUser, String upLoadClassify, int deleteFlag) {
		return upLoadDao.getByUpLoadUserName(upLoadUser, upLoadClassify, deleteFlag);
	}

	public void insertUpLoad(String upLoadName, String upLoadDate, String upLoadUser, String upLoadPath,
			String upLoadClassify) {
		upLoadDao.insertUpLoad(upLoadName, upLoadDate, upLoadUser, upLoadPath, upLoadClassify);
	}

	public List<UpLoadEntity> getByClassify(String upLoadClassify, int deleteFlag) {
		return upLoadDao.getByClassify(upLoadClassify, deleteFlag);
	}

	public void deleteDate(String deleteDate, int id, String upLoadName) {
		upLoadDao.deleteDate(deleteDate, id, upLoadName);
	}

	public void deleteUpload(int id, String upLoadName) {
		upLoadDao.deleteUpload(id,upLoadName);		
	}

	public void resEraser(int id, String upLoadName) {
		upLoadDao.resEraser(id, upLoadName);
	}

	public List<UpLoadEntity> getAllUpLoadInfo(int deleteFlag) {
		// TODO Auto-generated method stub
		return upLoadDao.getAllUpLoadInfo(deleteFlag);
	}
}

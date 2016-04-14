package com.tgwy.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.tgwy.entity.UpLoadEntity;

public interface UpLoadService {
	
	public List<UpLoadEntity> getByUpLoadUserName(@Param("upLoadUser") String upLoadUser,
			@Param("upLoadClassify") String upLoadClassify, @Param("deleteFlag") int deleteFlag);
	
	public void insertUpLoad(
			@Param("upLoadName") String upLoadName,
			@Param("upLoadDate") String upLoadDate,
			@Param("upLoadUser") String upLoadUser, 
			@Param("upLoadPath") String upLoadPath,
			@Param("upLoadClassify") String upLoadClassify
			);
	
	public void deleteUpload(@Param("id") int id,@Param("upLoadName") String upLoadName);
	
	public List<UpLoadEntity> getByClassify(@Param("upLoadClassify") String upLoadClassify,@Param("deleteFlag") int deleteFlag);
	
	public void deleteDate(@Param("deleteDate") String deleteDate,@Param("id") int id,@Param("upLoadName") String upLoadName);
	
	public void resEraser(@Param("id") int id,@Param("upLoadName") String upLoadName);
	
	public List<UpLoadEntity> getAllUpLoadInfo(@Param("deleteFlag") int deleteFlag);
}


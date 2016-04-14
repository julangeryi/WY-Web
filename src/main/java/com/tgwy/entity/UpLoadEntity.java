package com.tgwy.entity;

public class UpLoadEntity {

	private int id;
	private String upLoadName;
	private String upLoadDate;
	private String upLoadUser;
	private String upLoadPath;
	private int deleteFlag;
	private String upLoadClassify;
	private String deleteDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUpLoadName() {
		return upLoadName;
	}

	public void setUpLoadName(String upLoadName) {
		this.upLoadName = upLoadName;
	}

	public String getUpLoadDate() {
		return upLoadDate;
	}

	public void setUpLoadDate(String upLoadDate) {
		this.upLoadDate = upLoadDate;
	}

	public String getUpLoadUser() {
		return upLoadUser;
	}

	public void setUpLoadUser(String upLoadUser) {
		this.upLoadUser = upLoadUser;
	}

	public String getUpLoadPath() {
		return upLoadPath;
	}

	public void setUpLoadPath(String upLoadPath) {
		this.upLoadPath = upLoadPath;
	}

	public int getDeleteFlag() {
		return deleteFlag;
	}

	public void setDeleteFlag(int deleteFlag) {
		this.deleteFlag = deleteFlag;
	}

	public String getUpLoadClassify() {
		return upLoadClassify;
	}

	public void setUpLoadClassify(String upLoadClassify) {
		this.upLoadClassify = upLoadClassify;
	}

	public String getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(String deleteDate) {
		this.deleteDate = deleteDate;
	}

}

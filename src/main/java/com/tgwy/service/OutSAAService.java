package com.tgwy.service;

import java.util.List;

import com.tgwy.entity.OutSAAEntity;

public interface OutSAAService {

	//获取所有(x_value,y_value)值非空的Entity
	public List<OutSAAEntity> getNotNullSAAInfo();
	
	//通过组别来获取所有非空的Entity
	public List<OutSAAEntity> getNotNullSAAInfoByGroup(int group);
}

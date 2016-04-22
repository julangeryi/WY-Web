package com.tgwy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgwy.dao.OutSAADao;
import com.tgwy.entity.OutSAAEntity;
import com.tgwy.service.OutSAAService;

@Service("outSAAService")
public class OutSAAServiceImpl implements OutSAAService {
	
	@Autowired
	private OutSAADao outSAADao;
	
	public List<OutSAAEntity> getNotNullSAAInfo() {
		// TODO Auto-generated method stub
		return outSAADao.getNotNullSAAInfo();
	}

	public List<OutSAAEntity> getNotNullSAAInfoByGroup(int group) {
		// TODO Auto-generated method stub
		return outSAADao.getNotNullSAAInfoByGroup(group);
	}

}

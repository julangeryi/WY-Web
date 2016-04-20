package com.tgwy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tgwy.dao.OutWaterLevleDao;
import com.tgwy.service.OutWaterLevelService;

@Service("outWaterLevelService")
public class OutWaterLevelServiceImpl implements OutWaterLevelService{

	@Autowired
	private OutWaterLevleDao outWaterLevleDao;
	
	public List<String> getOutWaterLevelLegend() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelLegend();
	}

	public List<Integer> getOutWaterLevelLegendSensorID() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelLegendSensorID();
	}

	public List<Double> getOutWaterLevelValue() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelValue();
	}

	public List<Double> getOutWaterLevelValueBySensorId(int sensorId) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelValueBySensorId(sensorId);
	}

	public List<String> getOutWaterLevelCategory() {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelCategory();
	}

	public List<Double> getOutWaterLevelHistoryQueryValue(Integer sensorId, String from, String to) {
		// TODO Auto-generated method stub
		return outWaterLevleDao.getOutWaterLevelHistoryQueryValue(sensorId, from, to);
	}

}

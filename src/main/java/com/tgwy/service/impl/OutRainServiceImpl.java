package com.tgwy.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tgwy.dao.OutRainDao;
import com.tgwy.entity.OutRainEntity;
import com.tgwy.service.OutRainService;

@Service("outRainService")
public class OutRainServiceImpl implements OutRainService {

	@Resource
	private OutRainDao outRainDao;
	
	public List<OutRainEntity> getRainInfo() {
		return outRainDao.getRainInfo();
	}

	public List<String> getRainCategory() {
		// TODO Auto-generated method stub
		return outRainDao.getRainCategory();
	}

	public List<Integer> getRainLegendSensorID() {
		// TODO Auto-generated method stub
		return outRainDao.getRainLegendSensorID();
	}

	public List<Double> getRainValue() {
		// TODO Auto-generated method stub
		return outRainDao.getRainValue();
	}

	public List<String> getRainLegend() {
		// TODO Auto-generated method stub
		return outRainDao.getRainLegend();
	}

	public List<Double> getRainValueBySensorId(Integer sensorId) {
		// TODO Auto-generated method stub
		return outRainDao.getRainValueBySensorId(sensorId);
	}

	public List<Double> getRainHistoryQueryValue(Integer sensorId,String from, String to) {
		return outRainDao.getRainHistoryQueryValue(sensorId,from, to);
	}

	public List<String> getRainCategoryBySensorId(Integer sensorId) {
		// TODO Auto-generated method stub
		return outRainDao.getRainCategoryBySensorId(sensorId);
	}

	//通过sensor_id 获取正常测量点的测量时间
	public List<String> getRainNormaleCategoryBySensorId(Integer sensorId) {
		// TODO Auto-generated method stub
		return outRainDao.getRainNormaleCategoryBySensorId(sensorId);
	}

	public Double getRainValueByidAndTime(Integer sensorId, String dateTime) {
		// TODO Auto-generated method stub
		 return outRainDao.getRainValueByidAndTime(sensorId, dateTime);
	}

	//历史查询--获取丢失测量点的测量时间 通过from和to
	public List<String> getRainQueryCategoryBySensorId(Integer sensorId, String from, String to) {
		// TODO Auto-generated method stub
		return outRainDao.getRainQueryCategoryBySensorId(sensorId, from, to);
	}

	//历史查询--获取正常测量点的测量时间，通过from和to
	public List<String> getRainQueryNormaleCategoryBySensorId(Integer sensorId, String from, String to) {
		// TODO Auto-generated method stub
		return outRainDao.getRainQueryNormaleCategoryBySensorId(sensorId, from, to);
	}

	//重载
	public List<String> getRainCategoryOverLoad(String from, String to) {
		// TODO Auto-generated method stub
		return outRainDao.getRainCategoryOverLoad(from, to);
	}

	//通过ID和时间获取特定的值

}

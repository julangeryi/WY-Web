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

}

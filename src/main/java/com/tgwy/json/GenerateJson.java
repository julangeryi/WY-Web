package com.tgwy.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.tgwy.service.OutRainService;
import com.tgwy.service.OutWaterLevelService;

@Controller
public class GenerateJson {

	@Autowired
	public OutRainService outRainService;
	
	@Autowired	public OutWaterLevelService outWaterLevelService;

	@ResponseBody
	@RequestMapping(value = "getOutRainInfo", produces = "text/html;charset=UTF-8")
	public String getOutRainInfo() {
		int outRainLegendSize = 0;
		List<Integer> outRainLegendSensorId = outRainService.getRainLegendSensorID();
		outRainLegendSize = outRainLegendSensorId.size();

		List<String> outRainLegend = outRainService.getRainLegend();

		List<String> outRainCategories = outRainService.getRainCategory();

		List<Object[]> outRainValue = new ArrayList<Object[]>();

		for (int i = 0; i < outRainLegendSize; i++) {
			Integer sensorId = outRainLegendSensorId.get(i);
			outRainValue.add(outRainService.getRainValueBySensorId(sensorId).toArray());
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("legend", outRainLegend);
		map.put("categories", outRainCategories);
		map.put("values", outRainValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	
	@ResponseBody
	@RequestMapping(value = "getOutRainQueryInfo", produces = "text/html;charset=UTF-8")
	public String getOutRainQueryInfo(){
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String from = (String) session.getAttribute("from");
		String to = (String) session.getAttribute("to");
		
		int outRainLegendSize = 0;
		List<Integer> outRainLegendSensorId = outRainService.getRainLegendSensorID();
		outRainLegendSize = outRainLegendSensorId.size();

		List<String> outRainLegend = outRainService.getRainLegend();

		List<String> outRainCategories = outRainService.getRainCategory();
		
		
		
		List<Object[]> outRainValue = new ArrayList<Object[]>();

		for (int i = 0; i < outRainLegendSize; i++) {
			Integer sensorId = outRainLegendSensorId.get(i);
			if("exchageErr".equals(from)||null==from||"".equals(from)){
				outRainValue.add(outRainService.getRainValueBySensorId(sensorId).toArray());
			}else{
				outRainValue.add(outRainService.getRainHistoryQueryValue(sensorId, from, to).toArray());
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("legend", outRainLegend);
		map.put("categories", outRainCategories);
		map.put("values", outRainValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "getOutWaterLevelInfo", produces = "text/html;charset=UTF-8")
	public String getOutWaterLevelInfo(){
		int outWaterLevelLegendSize = 0;
		List<Integer> outWaterLevelLegendSensorId = outWaterLevelService.getOutWaterLevelLegendSensorID();
		outWaterLevelLegendSize = outWaterLevelLegendSensorId.size();
		
		List<String> outWaterLevelLegend = outWaterLevelService.getOutWaterLevelLegend();
		List<String> outWaterLevelCategories = outWaterLevelService.getOutWaterLevelCategory();
		List<Object[]> outWaterLevelValue = new ArrayList<Object[]>();
		
		
		for (int i = 0; i < outWaterLevelLegendSize; i++) {
			Integer sensorId = outWaterLevelLegendSensorId.get(i);
			outWaterLevelValue.add(outWaterLevelService.getOutWaterLevelValueBySensorId(sensorId).toArray());
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("legend", outWaterLevelLegend);
		map.put("categories", outWaterLevelCategories);
		map.put("values", outWaterLevelValue);
		String json = JSON.toJSONString(map);
		return json;
	}
	
	@ResponseBody
	@RequestMapping(value = "getOutWaterLevelQueryInfo", produces = "text/html;charset=UTF-8")
	public String getOutWaterLevelQueryInfo(){
		
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String from = (String) session.getAttribute("from2");
		String to = (String) session.getAttribute("to2");
		
		int outWaterLevelQuerySize = 0;
		List<Integer> outWaterLevelQueryLegendSensorId = outWaterLevelService.getOutWaterLevelLegendSensorID();
		outWaterLevelQuerySize = outWaterLevelQueryLegendSensorId.size();

		List<String> outWaterLevelQueryLegend = outWaterLevelService.getOutWaterLevelLegend();

		List<String> outWaterLevelQueryCategories = outWaterLevelService.getOutWaterLevelCategory();

		List<Object[]> outWaterLevelQueryValue = new ArrayList<Object[]>();

		
		for (int i = 0; i < outWaterLevelQuerySize; i++) {
			Integer sensorId = outWaterLevelQueryLegendSensorId.get(i);
			if("exchageErr".equals(from)||null==from||"".equals(from)){
				outWaterLevelQueryValue.add(outWaterLevelService.getOutWaterLevelValueBySensorId(sensorId).toArray());
			}else{
				outWaterLevelQueryValue.add(outWaterLevelService.getOutWaterLevelHistoryQueryValue(sensorId, from+" 00:01", to+" 23:59").toArray());
			}
		}
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("legend2", outWaterLevelQueryLegend);
		map.put("categories2", outWaterLevelQueryCategories);
		map.put("values2", outWaterLevelQueryValue);
		String json = JSON.toJSONString(map);
		return json;
		
	}

}

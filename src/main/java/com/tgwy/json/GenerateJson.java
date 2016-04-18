package com.tgwy.json;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.tgwy.service.OutRainService;

@Controller
public class GenerateJson {

	@Autowired
	public OutRainService outRainService;

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

}

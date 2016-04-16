package com.tgwy.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.tgwy.service.OutRainService;

@Controller
public class GenerateJson {

	@Autowired
	public OutRainService outRainService;

	@ResponseBody
	@RequestMapping(value = "getOutRainInfo", produces = "text/html;charset=UTF-8")
	public String getEc() {

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

}

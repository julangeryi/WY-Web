package com.tgwy.json;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

@Controller
public class GenerateJson {
	
	
	
	@ResponseBody
	@RequestMapping(value = "getEc", produces = "text/html;charset=UTF-8")
	public String getEc() {

		String [] ca1 = new String[]{"20","21","30","45","6"};
		String [] ca2 = new String[]{"21","22","31","35","7"};
		String [] ca3 = new String[]{"22","23","32","46","9"};
		String [] ca4 = new String[]{"23","24","34","85","5"};
		
		List<String[]> categories = new ArrayList<String[]>();
		categories.add(ca1);
		categories.add(ca2);
		categories.add(ca3);
		categories.add(ca4);
		Integer[] values = { 80, 50, 75, 100 };
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("categories", categories);
		map.put("values", values);
		String json = JSON.toJSONString(map);
		return json;

	}

}

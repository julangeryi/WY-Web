package com.tgwy.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tgwy.util.TgwyDateStringUtil;

@Controller
public class MonController {
	
	@RequestMapping("monEquipmentDistribution")
	public String monEquipmentDistribution(){
		return "jsp/mon/monEquipmentDistribution";
	}
	
	@RequestMapping("monEquipmentState")
	public String monEquipmentState(){
		return "jsp/mon/monEquipmentState";
	}
	
	@RequestMapping("monEquipmentParameter")
	public String monEquipmentParameter(){
		return "jsp/mon/monEquipmentParameter";
	}
	
	@RequestMapping("monRealTimeData")
	public String monRealTimeData(){
		return "jsp/mon/monRealTimeData";
	}
	
	@RequestMapping("monHistoryQuery")
	public String monHistoryQuery(){
		return "jsp/mon/monHistoryQuery";
	}
	
	@RequestMapping("monDownload")
	public String monDownload(){
		return "jsp/mon/monDownload";
	}
	
	@ResponseBody
	@RequestMapping(value="monOutRainQueryInfo")
	public void monOutRainQueryInfo(HttpServletRequest request){
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		session.setAttribute("from", TgwyDateStringUtil.getExchageDateFormat(from));
		session.setAttribute("to", TgwyDateStringUtil.getExchageDateFormat(to));
	}
	
	@ResponseBody
	@RequestMapping(value="monWaterLevelQueryInfo")
	public void monWaterLevelQueryInfo(HttpServletRequest request){
		String from = request.getParameter("from-2");
		String to = request.getParameter("to-2");
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		session.setAttribute("from2", TgwyDateStringUtil.getExchageDateFormat(from));
		session.setAttribute("to2", TgwyDateStringUtil.getExchageDateFormat(to));
	}

}

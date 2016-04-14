package com.tgwy.controller;

import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tgwy.entity.UpLoadEntity;
import com.tgwy.service.UpLoadService;

@Controller
public class UsrController {
	
	@Autowired
	private UpLoadService upLoadService;

	@RequestMapping("usrPermission")
	public String usrPermission() {
		return "jsp/usr/usrPermission";
	}
	
	@RequestMapping("usrRegister")
	public String usrRegister(){
		return "jsp/usr/usrRegister";
	}
	
	@RequestMapping("usrManage")
	public String usrManage(){
		return "jsp/usr/usrManage";
	}
	
	@RequestMapping("usrJournal")
	public String usrJournal(){
		return "jsp/usr/usrJournal";
	}
	
	@RequestMapping("usrStatistics")
	public String usrStatistics(){
		return "jsp/usr/usrStatistics";
	}
	
	@RequestMapping("adminResManagement")
	public String adminResManagement(Model model){
		
		model.addAttribute("upLoadList", this.listAllUpLoadInfo(0));
		return "jsp/res/resManagement";
	}
	
	private List<UpLoadEntity> listAllUpLoadInfo(int deleteFlag){
		
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String upLoadClassfy = session.getAttribute("userRole").toString();
		List<UpLoadEntity> upLoadList = upLoadService.getAllUpLoadInfo(deleteFlag);
		return upLoadList;
	}
	
}

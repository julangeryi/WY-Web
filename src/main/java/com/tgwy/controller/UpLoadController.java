package com.tgwy.controller;

import java.io.File;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.tgwy.constant.TgwyConstant;
import com.tgwy.entity.UpLoadEntity;
import com.tgwy.service.UpLoadService;
import com.tgwy.util.TgwyDateStringUtil;
import com.tgwy.util.TgwyUpDownLoadUtil;

@Controller
public class UpLoadController {

	@Autowired
	private UpLoadService upLoadService;

	@RequestMapping("upLoad")
	public void resUpload(@RequestParam("uploadFile") MultipartFile file,Model model) {
		if (!file.isEmpty()) {
			try {
				// 文件保存路径
				String filePath = TgwyConstant.inputLocation + file.getOriginalFilename();
				// 转存文件
				file.transferTo(new File(filePath));
				TgwyUpDownLoadUtil.fileUploadByFtp(file.getOriginalFilename());
				Subject subject = SecurityUtils.getSubject();
				Session session = subject.getSession();
				upLoadService.insertUpLoad(file.getOriginalFilename(), TgwyDateStringUtil.getLocalDate(),
						session.getAttribute("upLoadUser").toString(), filePath, "res");
				model.addAttribute("upLoadList", this.listAllUpLoadInfoByClassify(0));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	
	private List<UpLoadEntity> listAllUpLoadInfoByClassify(int deleteFlag){
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String upLoadClassfy = session.getAttribute("userRole").toString();
		List<UpLoadEntity> upLoadList = upLoadService.getByClassify(upLoadClassfy, deleteFlag);
		return upLoadList;
	}

}

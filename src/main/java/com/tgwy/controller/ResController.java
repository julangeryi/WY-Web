package com.tgwy.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tgwy.constant.TgwyConstant;
import com.tgwy.entity.UpLoadEntity;
import com.tgwy.service.UpLoadService;
import com.tgwy.util.TgwyDateStringUtil;
import com.tgwy.util.TgwyUpDownLoadUtil;

@Controller
public class ResController {

	@Autowired
	private UpLoadService upLoadService;

	@RequestMapping("resSurvey")
	public String resSurvey() {
		return "jsp/res/resSurvey";
	}

	@RequestMapping("resBuild")
	public String resBuild() {
		return "jsp/res/resBuild";
	}

	@RequestMapping("resResearch")
	public String resResearch() {
		return "jsp/res/resResearch";
	}

	@RequestMapping("resManagement")
	public String resManagement(Model model) {
		model.addAttribute("upLoadList", this.listAllUpLoadInfoByClassify(0));
		return "jsp/res/resManagement";
	}

	@RequestMapping("resDelete")
	public String resDelete(@RequestParam("id") int id,@RequestParam("uploadname") String uploadName, Model model) {
		upLoadService.deleteDate(TgwyDateStringUtil.getLocalDate(), id, uploadName);
		upLoadService.deleteUpload(id, uploadName);
		model.addAttribute("upLoadList", this.listAllUpLoadInfoByClassify(0));
		return "jsp/res/resManagement";
	}

	@RequestMapping("resDownLoad")
	public ResponseEntity<byte[]> download(@RequestParam("uploadname") String uploadName) throws IOException {
		HttpHeaders headers = new HttpHeaders();
		String rspName = TgwyConstant.inputLocation + uploadName;
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.setContentDispositionFormData("attachment", new String(uploadName.getBytes("gb2312"), "iso-8859-1"));
		File file = new File(rspName);
		byte[] bytes = FileUtils.readFileToByteArray(file);
		try {
			if (file.exists()) {
				file.delete();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ResponseEntity<byte[]>(bytes, headers, HttpStatus.CREATED);
	}
	
	@RequestMapping("downLoad")
	public String downLoad(@RequestParam("uploadname") String fileName,Model model){
		TgwyUpDownLoadUtil.fileDownLoadByFtp(fileName);
		model.addAttribute("upLoadList", this.listAllUpLoadInfoByClassify(0));
		return "jsp/res/resManagement";
		
	}
	
	@RequestMapping("resDeleteHistory")
	public String resDeleteHistory(Model model){
		model.addAttribute("upLoadList",this.listAllUpLoadInfoByClassify(1));
		return "jsp/res/resDeleteHistory";
	}
	
	@RequestMapping("resEraser")
	public String resEraser(@RequestParam("id") int id,@RequestParam("uploadname") String upLoadName, Model model){
		upLoadService.resEraser(id, upLoadName);
		model.addAttribute("upLoadList",this.listAllUpLoadInfoByClassify(1));
		return "jsp/res/resDeleteHistory";
	}

	
	private List<UpLoadEntity> listAllUpLoadInfoByClassify(int deleteFlag){
		Subject subject = SecurityUtils.getSubject();
		Session session = subject.getSession();
		String upLoadClassfy = session.getAttribute("userRole").toString();
		List<UpLoadEntity> upLoadList = upLoadService.getByClassify(upLoadClassfy, deleteFlag);
		return upLoadList;
	}

}

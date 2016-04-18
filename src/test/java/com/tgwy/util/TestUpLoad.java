package com.tgwy.util;

import org.junit.Test;

public class TestUpLoad {

	@Test
	public void test() {
		TgwyUpDownLoadUtil.fileUploadByFtp("java restful web service.pdf");
	}
	
	@Test
	public void downLoad(){
		TgwyUpDownLoadUtil.fileDownLoadByFtp("java restful web service.pdf");
	}

}

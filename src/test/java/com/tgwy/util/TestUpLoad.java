package com.tgwy.util;

import java.util.Arrays;
import java.util.List;

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
	
	@Test
	public void testCollection(){
		 String test_1[] = new String[]{"a","b","c","d"};
		 String test_2[] = new String[]{"a","b","c"};
		 List<String> list1 = Arrays.asList(test_1);
		 List<String> list2 = Arrays.asList(test_2);
//		 System.out.println(list1.removeAll(list2));
	}

}

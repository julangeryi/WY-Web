package com.tgwy.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;

@Aspect
public class SysUserLogAspectJ {
	
	public void after(JoinPoint jp) {
		System.out.println("+++++++++++++++++");
	}

}

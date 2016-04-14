package com.tgwy.realm;


import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.tgwy.entity.User;
import com.tgwy.service.UserService;

public class MyRealm extends AuthorizingRealm{

	@Resource
	private UserService userService;
	
	/**
	 * 为锟斤拷锟斤拷前锟斤拷录锟斤拷锟矫伙拷锟斤拷锟斤拷锟缴拷锟饺�
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String userName=(String)principals.getPrimaryPrincipal();
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		authorizationInfo.setRoles(userService.getRoles(userName));
		authorizationInfo.setStringPermissions(userService.getPermissions(userName));
		return authorizationInfo;
	}

	/**
	 * 锟斤拷证锟斤拷前锟斤拷录锟斤拷锟矫伙拷
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userName=(String)token.getPrincipal();
			User user=userService.getByUserName(userName);
			if(user!=null){
				AuthenticationInfo authcInfo=new SimpleAuthenticationInfo(user.getUserName(),user.getPassword(),"xx");
				return authcInfo;
			}else{
				return null;				
			}
	}

}

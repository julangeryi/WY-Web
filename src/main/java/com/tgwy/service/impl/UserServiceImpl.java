package com.tgwy.service.impl;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.tgwy.dao.UserDao;
import com.tgwy.entity.User;
import com.tgwy.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	
	public User getByUserName(String userName) {
		return userDao.getByUserName(userName);
	}

	public Set<String> getRoles(String userName) {
		return userDao.getRoles(userName);
	}

	public Set<String> getPermissions(String userName) {
		return userDao.getPermissions(userName);
	}

}

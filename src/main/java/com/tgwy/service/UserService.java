package com.tgwy.service;

import java.util.Set;
import com.tgwy.entity.User;

public interface UserService {

	/**
	 * @param userName
	 * @return
	 */
	public User getByUserName(String userName);
	
	/**
	 * @param userName
	 * @return
	 */
	public Set<String> getRoles(String userName);
	
	/**
	 * @param userName
	 * @return
	 */
	public Set<String> getPermissions(String userName);
}

package com.javaminds.service;

import java.util.HashMap;

import com.javaminds.dto.User;

public class LoginService {
	
	HashMap<String, String> users = new HashMap<String, String>();
	
	public LoginService() {
		users.put("test1", "Gaurav Chhabra");
		users.put("test2", "John Davis");
		users.put("test3", "Anna Smith");
	}
	
	public boolean authenticate(String userId, String password) {

		if (password == null || password.trim() == "") {
			return false;
		}

		return true;
	}
	
	public User getUserDetails(String userId) {
		User user = new User();
		user.setUserId(userId);
		user.setUserName(users.get(userId));
		return user;
	}

}

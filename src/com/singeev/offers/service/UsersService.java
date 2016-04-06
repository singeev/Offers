package com.singeev.offers.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.singeev.offers.dao.User;
import com.singeev.offers.dao.UsersDao;

@Service("usersService")
public class UsersService {

	@Autowired
	private UsersDao usersDao;

	public void create(User user) {
		usersDao.create(user);
	}

	public boolean exists(String username) {
		return usersDao.exists(username);
	}
}

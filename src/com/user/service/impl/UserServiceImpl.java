package com.user.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.user.dao.UserDao;
import com.user.entity.User;
import com.user.service.UserService;
@Service("userService")
public class UserServiceImpl implements UserService{
     @Autowired
     private UserDao userDao;

	@Override
	public List<User> getUserList(String keyWord) {
		return userDao.getUserList(keyWord);
	}

	@Override
	public void add(User user) {
		userDao.add(user);		
	}

	@Override
	public void update(User user) {
		userDao.update(user);
	}

	@Override
	public void delete(Integer id) {
		userDao.delete(id);
	}

	@Override
	public User getUserById(Integer id) {
		return userDao.getUserById(id);
	}
	

}

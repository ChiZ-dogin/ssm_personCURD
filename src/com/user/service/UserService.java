package com.user.service;

import java.util.List;


import com.user.entity.User;

public interface UserService {
	public List<User>getUserList(String keyWord);
	User getUserById( Integer id);
	void add(User user);
	void update(User user);
	void delete( Integer id);

}

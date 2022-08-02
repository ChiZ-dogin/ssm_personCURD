package com.user.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.user.entity.User;

public interface UserDao {
	public List<User>getUserList(@Param("keyWord")String keyWord);
	void add(User user);
	void update(User user);
	void delete(@Param("id") Integer id);
	User getUserById(@Param("id") Integer id);
}

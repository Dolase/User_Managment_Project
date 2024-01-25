package com.usermanagment.dao;

import java.util.List;

import com.usermanagment.model.User;

public interface UserDao{

	List<User> ListOfAllUser();

	User fetchUserById(int i);

	public int insertUserData(User u);
	int deleteUserData(int i);

	String updateUserData(int i, String n, String e, String c);
}

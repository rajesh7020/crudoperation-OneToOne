package com.rojmat.dao;

import java.util.List;

import com.rojmat.entity.User;

public interface UserDao {

	public void add(User user);
	public void edit(User user);
	public void delete(int userId);
	public User getUserbyId(int userId);
	public List getAllUsers();
	public User loginUser(String email,String password);
	public Long getUserIdByEmail(String email);
}

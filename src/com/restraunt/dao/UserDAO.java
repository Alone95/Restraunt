package com.restraunt.dao;

import java.util.List;

import com.restraunt.entity.Admin;
import com.restraunt.entity.Users;

public interface UserDAO {
	//用户登录验证
	public List search(Users condition);
	
	//添加用户
	public void addUsers(Users users);
	
	//管理员登录验证
	public List search(Admin condition);
	
	//修改个人信息
	public void modifyUsers(Users users);
	
	//获取所有用户信息
	public List getAllUsers(int page);
	
	public Integer getCountOfUser();
}

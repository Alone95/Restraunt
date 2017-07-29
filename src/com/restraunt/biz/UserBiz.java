package com.restraunt.biz;


import java.util.List;

import com.restraunt.entity.Admin;
import com.restraunt.entity.Pager;
import com.restraunt.entity.Users;

public interface UserBiz {
	//用户登录验证
	public List login(Users condition);
	
	//添加用户
	public void addUsers(Users users);
	
	//管理员登录验证
	public List login(Admin condition);
	
	//修改个人信息
	public void modifyUsers(Users users);
	
	//获取所有注册用户信息
	public List getAllUsers(int page);
	
	public Pager getPaperOfUser();
}

package com.restraunt.biz.impl;

import java.util.List;

import com.restraunt.biz.UserBiz;
import com.restraunt.dao.UserDAO;
import com.restraunt.entity.Admin;
import com.restraunt.entity.Pager;
import com.restraunt.entity.Users;

public class UserBizImpl implements UserBiz {

	UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public List login(Users condition) {
		return userDAO.search(condition);
	}

	//添加用户
	@Override
	public void addUsers(Users users) {
		userDAO.addUsers(users);		
	}

	//管理员登录验证
	@Override
	public List login(Admin condition) {
		return userDAO.search(condition);
	}

	//修改个人信息
	@Override
	public void modifyUsers(Users users) {
		userDAO.modifyUsers(users);
	}

	@Override
	public List getAllUsers(int page) {
		// TODO Auto-generated method stub
		return userDAO.getAllUsers(page);
	}
	
	@Override
	public Pager getPaperOfUser(){
		int count= userDAO.getCountOfUser();
		//使用分页类Pager定义对象
		Pager pager=new Pager();
		//设置pager对象中的perPageRows属性，表示每页显示的记录数
		pager.setPerPageRows(5);
		//设置pager对象中的rowCount属性，表示记录总数
		pager.setRowCount(count);
	    //返回pager对象
		return pager;
	}
	
}

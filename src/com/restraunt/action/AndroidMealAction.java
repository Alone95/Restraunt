package com.restraunt.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import com.restraunt.biz.MealBiz;
import com.restraunt.entity.Meal;
import com.restraunt.utils.JsonUtils;

public class AndroidMealAction extends ActionSupport implements SessionAware {

	public Map<String, Object> session;
	MealBiz mealBiz;
	
	public MealBiz getMealBiz() {
		return mealBiz;
	}

	public void setMealBiz(MealBiz mealBiz) {
		this.mealBiz = mealBiz;
	}

	private String jsonResult;
	private Integer id;
	

	public String all() {
		
		Map<String, Object> map = new HashMap<String, Object>();
		List<Meal> newslist = mealBiz.getAll();
		String result = JsonUtils.list2Json(newslist);
		// System.out.println(result);
		jsonResult = "{\"status\":\"success\",\"data\":" + result + "}";
		System.out.println(jsonResult);

		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/json; charset=utf-8");
		response.setHeader("Cache-Control", "no-cache"); // 取消浏览器缓存
		try {
			PrintWriter out = response.getWriter();
			out.print(jsonResult);
			out.flush();
			out.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	public String detailed(){
//		House house=(House)hbiz.getById(House.class,id);
		Meal meal =mealBiz.getMealByMealId(id);
		session.put("androidh",meal);
		
		return SUCCESS;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	

	

	public String getJsonResult() {
		return jsonResult;
	}

	public void setJsonResult(String jsonResult) {
		this.jsonResult = jsonResult;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

}

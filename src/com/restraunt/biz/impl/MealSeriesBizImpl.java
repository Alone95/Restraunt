package com.restraunt.biz.impl;

import java.util.List;
import com.restraunt.biz.MealSeriesBiz;
import com.restraunt.dao.MealSeriesDAO;

public class MealSeriesBizImpl implements MealSeriesBiz {

	MealSeriesDAO mealSeriesDAO;
	
	public void setMealSeriesDAO(MealSeriesDAO mealSeriesDAO) {
		this.mealSeriesDAO = mealSeriesDAO;
	}

	@Override
	public List getMealSeries() {
		return mealSeriesDAO.getMealSeries();
	}

}

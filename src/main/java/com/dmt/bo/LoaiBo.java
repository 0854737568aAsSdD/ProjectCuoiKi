package com.dmt.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.dmt.bean.LoaiBean;
import com.dmt.dao.LoaiDao;



public class LoaiBo {
	@Autowired
	LoaiDao dao;
	public List<LoaiBean> getAllusers() {
		return dao.getAllusers();
	}

}

package com.dmt.bo.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.dmt.bean.GioHangBean;
import com.dmt.bo.GioHangBo;
import com.dmt.dao.GioHangDao;

@Service
public class GioHangBoImpl implements GioHangBo {
	@Autowired
	GioHangDao dao;

	@Override
	public void addDienThoai(GioHangBean gh) {
		dao.addDienThoai(gh);
	}

	@Override
	public void editDienThoai(GioHangBean gh) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteDienThoai(GioHangBean gh) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<GioHangBean> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}

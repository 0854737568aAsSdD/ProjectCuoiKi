package com.dmt.bo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.dmt.bean.DienThoaiBean;
import com.dmt.dao.DienThoaiDao;

public class DienThoaiBo {
	@Autowired
	DienThoaiDao dao;

	public List<DienThoaiBean> getPhone() {
		return dao.getAllusers();
	}
	public List<DienThoaiBean> getDienThoai(String maloai) {
		return dao.getDienThoai(maloai);
	}
	public List<DienThoaiBean> getTimKiem(String txtTimKiem) {
		return dao.getTimKiem(txtTimKiem);
	}

}

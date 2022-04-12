package com.dmt.bo;

import com.dmt.bean.AdminBean;
import com.dmt.dao.AdminDao;

public class AdminBo {
	AdminDao dao = new AdminDao();
	public AdminBean ktdn(String TenDangNhap, String MatKhau) throws Exception {
		return dao.ktdn(TenDangNhap, MatKhau);
	}
}

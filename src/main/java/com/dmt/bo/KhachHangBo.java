package com.dmt.bo;

import com.dmt.bean.KhachHangBean;
import com.dmt.dao.KhachHangDao;

public class KhachHangBo {
	KhachHangDao dao = new KhachHangDao();

	public KhachHangBean ktdm(String tendn, String pass) throws Exception {
		return dao.ktdm(tendn, pass);
	}
}

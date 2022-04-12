package com.dmt.bo;

import com.dmt.dao.AdminPhanHoiDao;

public class AdminPhanHoiBo {
	AdminPhanHoiDao dao = new AdminPhanHoiDao();
	public void AdminPhanHoi(int maphanhoi, String loinhan) throws Exception {
		dao.AdminPhanHoi(maphanhoi, loinhan);
	}


}

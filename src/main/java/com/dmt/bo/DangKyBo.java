package com.dmt.bo;

import com.dmt.dao.DangKyDao;
public class DangKyBo {
	DangKyDao dao = new DangKyDao();
	public int DangKyDao(String hoten, String sodienthoai, String diachi, String tendangnhap, String matkhau) throws Exception {
		return dao.DangKyDao(hoten, sodienthoai, diachi, tendangnhap, matkhau);
	}

}

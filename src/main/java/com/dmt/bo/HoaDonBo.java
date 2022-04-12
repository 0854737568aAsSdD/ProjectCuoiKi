package com.dmt.bo;

import com.dmt.dao.HoaDonDao;

public class HoaDonBo {
	HoaDonDao hddao = new HoaDonDao();

	public void getHoaDon(int makh) throws Exception {
		hddao.getHoaDon(makh);
	}
}

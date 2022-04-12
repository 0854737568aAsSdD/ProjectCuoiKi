package com.dmt.bo;

import java.util.ArrayList;

import com.dmt.bean.GioHangBean;
import com.dmt.dao.ChiTietHoaDonDao;

public class ChiTietHoaDonBo {
	ChiTietHoaDonDao chitiet = new ChiTietHoaDonDao();

	public void getChiTietHoaDon(ArrayList<GioHangBean> ds) throws Exception {
		chitiet.getChiTietHoaDon(ds);
	}

}

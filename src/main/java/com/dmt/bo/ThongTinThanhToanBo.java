package com.dmt.bo;

import java.util.ArrayList;

import com.dmt.bean.ThongTinThanhToanBean;
import com.dmt.dao.ThongTinThanhToanDao;

public class ThongTinThanhToanBo {
	ThongTinThanhToanDao dao = new ThongTinThanhToanDao();
	public ArrayList<ThongTinThanhToanBean> getThanhToan() throws Exception {
		return dao.getThanhToan();
	}

}

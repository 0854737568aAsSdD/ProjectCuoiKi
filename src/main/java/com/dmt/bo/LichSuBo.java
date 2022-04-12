package com.dmt.bo;

import java.util.ArrayList;

import com.dmt.bean.LichSuBean;
import com.dmt.dao.LichSuDao;

public class LichSuBo {
	LichSuDao ls = new LichSuDao();

	public ArrayList<LichSuBean> getLichSu(int makh) throws Exception {
		return ls.getLichSu(makh);
	}
}

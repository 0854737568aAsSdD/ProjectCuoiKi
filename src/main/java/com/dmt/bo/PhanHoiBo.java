package com.dmt.bo;

import java.util.ArrayList;

import com.dmt.bean.PhanHoiBean;
import com.dmt.dao.PhanHoiDao;

public class PhanHoiBo {
	PhanHoiDao dao = new PhanHoiDao();

	public void themloinhan(String loinhan, int makh) throws Exception {
		dao.themloinhan(loinhan, makh);
	}
	public ArrayList<PhanHoiBean> showloinhanadmin() throws Exception{
		return dao.showloinhanadmin();
	}


}

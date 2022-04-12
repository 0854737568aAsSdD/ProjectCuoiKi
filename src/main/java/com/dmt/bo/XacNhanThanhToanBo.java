package com.dmt.bo;

import com.dmt.dao.XacNhanThanhToanAdmin;

public class XacNhanThanhToanBo {
	XacNhanThanhToanAdmin dao = new XacNhanThanhToanAdmin();

	public void XacNhanThanhToanMotQuyen(int machitiet) throws Exception {
		dao.XacNhanThanhToanMotQuyen(machitiet);
	}

}

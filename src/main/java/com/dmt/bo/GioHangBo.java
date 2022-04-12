package com.dmt.bo;

import java.util.List;

import com.dmt.bean.GioHangBean;

public interface GioHangBo {
	public void addDienThoai(GioHangBean gh);

	public void editDienThoai(GioHangBean gh);

	public void deleteDienThoai(GioHangBean gh);

	public List<GioHangBean> getAll();
}

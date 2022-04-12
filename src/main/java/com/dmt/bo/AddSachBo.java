package com.dmt.bo;

import com.dmt.dao.AddSachDao;

public class AddSachBo {
	AddSachDao sdao = new AddSachDao();
	public void themdienthoai(String madientoai, String tendienthoai, String manhinh, int gia, String hedieuhanh,
			String loai, String cpu, String urlimage, String camerasau, String cameratruoc, String ram,
			String bonhotrong) throws Exception {
		sdao.themdienthoai(madientoai, tendienthoai, manhinh, gia, hedieuhanh, loai, cpu, urlimage, camerasau, cameratruoc, ram, bonhotrong);
	}
	public void suadienthoai(String madienthoai, String tendienthoai, String manhinh, int gia, String hedieuhanh,
			String loai, String cpu, String urlimage, String camerasau, String cameratruoc, String ram,
			String bonhotrong) throws Exception {
		 sdao.suadienthoai(madienthoai, tendienthoai, manhinh, gia, hedieuhanh, loai, cpu, urlimage, camerasau, cameratruoc, ram, bonhotrong);
	}
	public void DeleteSach(String madienthoai) throws Exception {
		sdao.DeleteSach(madienthoai);
	}
	

}

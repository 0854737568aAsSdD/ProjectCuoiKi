package com.dmt.dao;

public interface AdminThemSachDao {
	public void themsach(String madientoai, String tendienthoai, String manhinh, int gia, String hedieuhanh,
			String loai, String cpu, String urlimage, String camerasau, String cameratruoc, String ram,
			String bonhotrong);

	public void xoasach(String madientoai);

	public void suasach(String madientoai, String tendienthoai, String manhinh, int gia, String hedieuhanh, String loai,
			String cpu, String urlimage, String camerasau, String cameratruoc, String ram, String bonhotrong);

}

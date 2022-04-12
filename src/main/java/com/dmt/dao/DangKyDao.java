package com.dmt.dao;

import java.sql.PreparedStatement;

public class DangKyDao {
	public int DangKyDao(String hoten, String sodienthoai, String diachi, String tendangnhap, String matkhau) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "Insert into KhachHang(hoten,sodt,diachi,tendn,pass) values(?,?,?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, hoten);
		cmd.setString(2, sodienthoai);
		cmd.setString(3, diachi);
		cmd.setString(4, tendangnhap);
		cmd.setString(5, matkhau);
		int x = cmd.executeUpdate();
		return x;
	}

}

package com.dmt.dao;

import java.sql.PreparedStatement;

public class AdminPhanHoiDao {
	public void AdminPhanHoi(int maphanhoi, String loinhan) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "update PhanHoi " + "set xacnhan = 1," + " phanhoi = ?  " + "from PhanHoi inner join "
				+ "KhachHang on " + "KhachHang.makh = PhanHoi.makh" + " where maphanhoi = '" + maphanhoi + "'";
		System.out.println(sql);
		PreparedStatement preparedStatement = dc.cn.prepareStatement(sql);
		preparedStatement.setString(1, loinhan);
		preparedStatement.executeUpdate();
	}

}

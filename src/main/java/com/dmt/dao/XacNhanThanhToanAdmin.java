package com.dmt.dao;

import java.sql.PreparedStatement;

public class XacNhanThanhToanAdmin {
	public void XacNhanThanhToanMotQuyen(int machitiet) throws Exception
	{
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "update hoadon "
				+ "set damua = 1 "
				+ "from hoadon inner join "
				+ "ChiTietHoaDon on "
				+ "ChiTietHoaDon.MaHoaDon = hoadon.MaHoaDon"
				+ " where MaChiTietHd = '"+machitiet+"'";
		System.out.println(sql);
		PreparedStatement preparedStatement = dc.cn.prepareStatement(sql);
		preparedStatement.executeUpdate();	
	}
}

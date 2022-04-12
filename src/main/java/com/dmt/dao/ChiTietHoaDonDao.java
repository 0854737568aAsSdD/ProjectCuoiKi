package com.dmt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.dmt.bean.GioHangBean;

public class ChiTietHoaDonDao {
	public void getChiTietHoaDon(ArrayList<GioHangBean> ds) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		Statement statement = dc.cn.createStatement();
		String query = "select * from hoadon";
		System.out.println(query);
		ResultSet rs = statement.executeQuery(query);
		int y = 0;
		while (rs.next()) {
			y = rs.getInt("MaHoaDon");
		}
		int n = ds.size();
		for (int i = 0; i < n; i++) {
			String struct = " insert into ChiTietHoaDon(madienthoai,SoLuongMua,MaHoaDon)" + "values('"
					+ ds.get(i).getMadienthoai() + "','" + ds.get(i).getSoluong() + "','" + y + "')";
			System.out.println(struct);
			PreparedStatement preparedStatement1 = dc.cn.prepareStatement(struct);
			int x = preparedStatement1.executeUpdate();
		}

	}

}

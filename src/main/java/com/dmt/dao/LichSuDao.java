package com.dmt.dao;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.dmt.bean.LichSuBean;

public class LichSuDao {

	public ArrayList<LichSuBean> getLichSu(int makh) throws Exception {
		int[] array = new int[1000];
		ArrayList<LichSuBean> lsBeans = new ArrayList<LichSuBean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select MaHoaDon from hoadon where makh='" + makh + "'";
		System.out.println(sql);
		Statement statement = dc.cn.createStatement();
		ResultSet rs = statement.executeQuery(sql);
		int i = 0;
		while (rs.next()) {
			array[i] = rs.getInt("MaHoaDon");
			i++;
		}

		for (int j = 0; j < i; j++) {
			String query = "select MaChiTietHD,tendienthoai,hoadon.NgayMua,ChiTietHoaDon.SoLuongMua,gia,anh,maloai,damua"
					+ " from ChiTietHoaDon inner join DienThoai on ChiTietHoaDon.madienthoai=DienThoai.madienthoai "
					+ "inner join HoaDon on ChiTietHoaDon.MaHoaDon=HoaDon.MaHoaDon " + " where ChiTietHoaDon.MaHoaDon='"
					+ array[j] + "'";
			System.out.println(query);
			ResultSet resultSet = statement.executeQuery(query);
			while (resultSet.next()) {
				LichSuBean sb = new LichSuBean();
				sb.setAnh(resultSet.getString("anh"));
				sb.setGia(resultSet.getInt("gia"));
				sb.setSoluong(resultSet.getInt("SoLuongMua"));
				sb.setDate(resultSet.getDate("NgayMua"));
				sb.setMaChiTietHD(resultSet.getInt("MaChiTietHD"));
				sb.setTendienthoai(resultSet.getString("tendienthoai"));
				sb.setDamua(resultSet.getInt("damua"));
				lsBeans.add(sb);
			}
		}
		return lsBeans;
	}

}

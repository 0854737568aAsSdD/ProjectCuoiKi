package com.dmt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dmt.bean.KhachHangBean;


public class KhachHangDao {
	public KhachHangBean ktdm(String tendn, String pass) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from KhachHang where tendn= ? and  pass= ?";
		System.out.println(sql);
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		if (rs.next() == false) {
			return null;
		} else {
			KhachHangBean kh = new KhachHangBean();
			kh.setMakh(rs.getInt(1));
			kh.setHoten(rs.getString(2));
			kh.setDiachi(rs.getString(3));
			kh.setMatkhau(rs.getString(7));
			kh.setTendn(rs.getString(6));
			return kh;
		}

	}
}

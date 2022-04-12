package com.dmt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.dmt.bean.AdminBean;
public class AdminDao {
		public AdminBean ktdn(String TenDangNhap, String MatKhau) throws Exception {
			DungChung dc = new DungChung();
			dc.KetNoi();
			String sql = "Select TenDangNhap,MatKhau from DangNhap where TenDangNhap= ? and MatKhau= ? ";
			PreparedStatement cmd = dc.cn.prepareStatement(sql);
			cmd.setString(1, TenDangNhap);
			cmd.setString(2, MatKhau);
			ResultSet rs = cmd.executeQuery();
			if (rs.next() == false) {
				return null;
			} else {
				AdminBean admin = new AdminBean();
				admin.setTenDangNhap(rs.getString("TenDangNhap"));
				admin.setMatKhau(rs.getString("MatKhau"));
				return admin;
			}

		}

}


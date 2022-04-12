package com.dmt.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dmt.dao.AdminThemSachDao;

@Repository
public class AdminThemSachDaoImpl implements AdminThemSachDao{
	@Autowired
	JdbcTemplate jdbctemplate;

	@Override
	public void themsach(String madienthoai, String tendienthoai, String manhinh, int gia, String hedieuhanh,
			String loai, String cpu, String urlimage, String camerasau, String cameratruoc, String ram,
			String bonhotrong) {
		String sql = "INSERT INTO DienThoai(madienthoai,manhinh.hedieuhanh,camerasau,cameratruoc,cpu,ram,bonhotrong,maloai,anh,gia) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		jdbctemplate.update(sql, madienthoai,manhinh,hedieuhanh,camerasau,cameratruoc,cpu,ram,bonhotrong,urlimage,gia);	
	}

	@Override
	public void xoasach(String madientoai) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void suasach(String madientoai, String tendienthoai, String manhinh, int gia, String hedieuhanh, String loai,
			String cpu, String urlimage, String camerasau, String cameratruoc, String ram, String bonhotrong) {
		// TODO Auto-generated method stub
		
	}
	

}

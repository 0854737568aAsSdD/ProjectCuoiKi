package com.dmt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dmt.bean.LoaiBean;


public class LoaiDao {
	@Autowired
	JdbcTemplate jdbcTemplate;

	public List<LoaiBean> getAllusers() {
		String sql = "Select * from Loai";
		System.out.println(sql);
		return jdbcTemplate.query(sql, new Object[] {}, new RowMapper<LoaiBean>() {
			@Override
			public LoaiBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				LoaiBean loai = new LoaiBean();
				loai.setMaloai(rs.getString("maloai"));
				loai.setTenloai(rs.getString("tenloai"));
				loai.setAnhloai(rs.getString("anhloai"));
				return loai;
			}
		});

	}

}

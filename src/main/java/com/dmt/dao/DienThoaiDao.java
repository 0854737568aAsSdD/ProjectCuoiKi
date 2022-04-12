package com.dmt.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.dmt.bean.DienThoaiBean;

public class DienThoaiDao {
	@Autowired
	JdbcTemplate jdbcTemplate123;

	public List<DienThoaiBean> getAllusers() {
		String sql = "Select * from DienThoai";
		return jdbcTemplate123.query(sql, new Object[] {}, new RowMapper<DienThoaiBean>() {

			@Override
			public DienThoaiBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				DienThoaiBean dth = new DienThoaiBean();
				dth.setManhinh(rs.getString(2));
				dth.setHedieuhanh(rs.getString(3));
				dth.setCamerasau(rs.getString(4));
				dth.setCameratruoc(rs.getString(5));
				dth.setCpu(rs.getString(6));
				dth.setRam(rs.getString(7));
				dth.setBonhotrong(rs.getString(8));
				dth.setThenho(rs.getString(9));
				dth.setThesim(rs.getString(10));
				dth.setDungluongpin(rs.getString(11));
				dth.setTendienthoai(rs.getString("tendienthoai"));
				dth.setAnh(rs.getString("anh"));
				dth.setGia(rs.getInt("gia"));
				dth.setMadienthoai(rs.getString("madienthoai"));
				return dth;
			}
		});

	}

	public List<DienThoaiBean> getDienThoai(String maloai) {
		String sql = "Select * from DienThoai where maloai = '" + maloai + "' ";
		return jdbcTemplate123.query(sql, new Object[] {}, new RowMapper<DienThoaiBean>() {

			@Override
			public DienThoaiBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				DienThoaiBean dth = new DienThoaiBean();
				dth.setManhinh(rs.getString(2));
				dth.setHedieuhanh(rs.getString(3));
				dth.setCamerasau(rs.getString(4));
				dth.setCameratruoc(rs.getString(5));
				dth.setCpu(rs.getString(6));
				dth.setRam(rs.getString(7));
				dth.setBonhotrong(rs.getString(8));
				dth.setThenho(rs.getString(9));
				dth.setThesim(rs.getString(10));
				dth.setDungluongpin(rs.getString(11));
				dth.setTendienthoai(rs.getString("tendienthoai"));
				dth.setAnh(rs.getString("anh"));
				dth.setGia(rs.getInt("gia"));
				dth.setMadienthoai(rs.getString("madienthoai"));
				return dth;
			}
		});

	}

	public List<DienThoaiBean> getTimKiem(String txtTimKiem) {
		String sql = "Select * from DienThoai where tendienthoai like '%" + txtTimKiem + "%' ";
		System.out.println(sql);
		return jdbcTemplate123.query(sql, new Object[] {}, new RowMapper<DienThoaiBean>() {

			@Override
			public DienThoaiBean mapRow(ResultSet rs, int rowNum) throws SQLException {
				DienThoaiBean dth = new DienThoaiBean();
				dth.setManhinh(rs.getString(2));
				dth.setHedieuhanh(rs.getString(3));
				dth.setCamerasau(rs.getString(4));
				dth.setCameratruoc(rs.getString(5));
				dth.setCpu(rs.getString(6));
				dth.setRam(rs.getString(7));
				dth.setBonhotrong(rs.getString(8));
				dth.setThenho(rs.getString(9));
				dth.setThesim(rs.getString(10));
				dth.setDungluongpin(rs.getString(11));
				dth.setTendienthoai(rs.getString("tendienthoai"));
				dth.setAnh(rs.getString("anh"));
				dth.setGia(rs.getInt("gia"));
				dth.setMadienthoai(rs.getString("madienthoai"));
				return dth;
			}
		});

	}

}

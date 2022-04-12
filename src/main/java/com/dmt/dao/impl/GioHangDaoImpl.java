package com.dmt.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.dmt.bean.GioHangBean;
import com.dmt.dao.GioHangDao;

@Repository
public class GioHangDaoImpl implements GioHangDao {
	@Autowired
	JdbcTemplate jdbctemplate;

	@Override
	public void addDienThoai(GioHangBean gh) {
		String sql = "INSERT INTO GioHang(makh,tendienthoai,soluong,gia,anh,madienthoai) values(?,?,?,?,?,?)";
		jdbctemplate.update(sql, gh.getMakh(), gh.getTendienthoai(), gh.getSoluong(), gh.getGia(), gh.getAnh(),gh.getMadienthoai());
	}

	@Override
	public void editDienThoai(GioHangBean gh) {

	}

	@Override
	public void deleteDienThoai(GioHangBean gh) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<GioHangBean> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

}

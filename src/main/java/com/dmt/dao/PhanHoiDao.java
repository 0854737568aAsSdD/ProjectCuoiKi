package com.dmt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dmt.bean.PhanHoiBean;

public class PhanHoiDao {
	public void themloinhan(String loinhan,int makh) throws Exception
	{
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = " insert into PhanHoi(makh,noidung,xacnhan,machitietphanhoi) " + "values(?,?,?,?)";
		System.out.println(sql);
		PreparedStatement preparedStatement = dc.cn.prepareStatement(sql);
		preparedStatement.setInt(1, makh);
		preparedStatement.setString(2, loinhan);
		preparedStatement.setInt(3, 0);
		preparedStatement.setInt(4, 1);
		int x = preparedStatement.executeUpdate();
	}
	
	public ArrayList<PhanHoiBean> showloinhanadmin() throws Exception
	{
		ArrayList<PhanHoiBean> ds = new ArrayList<PhanHoiBean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = " select maphanhoi,hoten,KhachHang.makh,noidung,phanhoi,xacnhan "
				+ " from KhachHang inner join PhanHoi on "
				+ " KhachHang.makh = PhanHoi.makh";
		PreparedStatement preparedStatement = dc.cn.prepareStatement(sql);
		ResultSet rs = preparedStatement.executeQuery();
		while(rs.next())
		{
			PhanHoiBean ph = new PhanHoiBean();
			ph.setHoten(rs.getString("hoten"));
			ph.setMakh(rs.getInt("makh"));
			ph.setNoidung(rs.getString("noidung"));
			ph.setPhanhoi(rs.getString("phanhoi"));
			ph.setXacnhan(rs.getInt("xacnhan"));
			ph.setMaphanhoi(rs.getInt("maphanhoi"));
			ds.add(ph);
		}
		return ds;
	}

}

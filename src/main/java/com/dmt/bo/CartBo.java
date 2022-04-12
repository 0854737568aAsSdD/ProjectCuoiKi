package com.dmt.bo;

import java.util.ArrayList;

import com.dmt.bean.GioHangBean;

public class CartBo {
	public GioHangBean ThemDanhSach (String tendienthoai,int soluong,int gia,String anh,String madienthoai)
	{
		GioHangBean ghban = new GioHangBean();
        ghban.setTendienthoai(tendienthoai);
        ghban.setSoluong(soluong);
        ghban.setGia(gia);
        ghban.setAnh(anh);
        ghban.setMadienthoai(madienthoai);
		return ghban;
	}
	public int sotien(ArrayList<GioHangBean> a )
	{
		int salary = 0;
		for(int i=0;i<a.size();i++)
		{
			salary = salary+a.get(i).getThanhtien();
		}
		return salary;
	}

}

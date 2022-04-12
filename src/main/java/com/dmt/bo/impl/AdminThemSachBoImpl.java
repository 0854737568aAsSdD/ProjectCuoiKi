package com.dmt.bo.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dmt.bo.AdminThemSachBo;
import com.dmt.dao.AdminThemSachDao;

@Service
public class AdminThemSachBoImpl implements AdminThemSachBo {
	@Autowired
	AdminThemSachDao dao;

	@Override
	public void themsach(String madientoai, String tendienthoai, String manhinh, int gia, String hedieuhanh,
			String loai, String cpu, String urlimage, String camerasau, String cameratruoc, String ram,
			String bonhotrong) {
    dao.themsach(madientoai, tendienthoai, manhinh, gia, hedieuhanh, loai, cpu, urlimage, camerasau, cameratruoc, ram, bonhotrong);		
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

package com.dmt.bean;

import java.util.Date;

public class HoaDonBean {
	private int makh;
	private Date NgayMua;
	private int damua;

	public HoaDonBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HoaDonBean(int makh, Date ngayMua, int damua) {
		super();
		this.makh = makh;
		NgayMua = ngayMua;
		this.damua = damua;
	}

	public int getMakh() {
		return makh;
	}

	public void setMakh(int makh) {
		this.makh = makh;
	}

	public Date getNgayMua() {
		return NgayMua;
	}

	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}

	public int getDamua() {
		return damua;
	}

	public void setDamua(int damua) {
		this.damua = damua;
	}

}
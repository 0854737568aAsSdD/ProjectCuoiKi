package com.dmt.bean;

import java.sql.Date;

public class LichSuBean {
	private int MaChiTietHD;
	private String tendienthoai;
	private int gia;
	private int soluong;
	private Date date;
	private String anh;
	private int damua;

	public LichSuBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LichSuBean(int maChiTietHD, String tendienthoai, int gia, int soluong, Date date, String anh) {
		super();
		MaChiTietHD = maChiTietHD;
		this.tendienthoai = tendienthoai;
		this.gia = gia;
		this.soluong = soluong;
		this.date = date;
		this.anh = anh;
	}

	public int getMaChiTietHD() {
		return MaChiTietHD;
	}

	public void setMaChiTietHD(int maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}

	public String getTendienthoai() {
		return tendienthoai;
	}

	public void setTendienthoai(String tendienthoai) {
		this.tendienthoai = tendienthoai;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getAnh() {
		return anh;
	}

	public void setAnh(String anh) {
		this.anh = anh;
	}

	public int getDamua() {
		return damua;
	}

	public void setDamua(int damua) {
		this.damua = damua;
	}
	
}

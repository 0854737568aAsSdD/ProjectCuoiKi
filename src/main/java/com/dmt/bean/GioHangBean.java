package com.dmt.bean;

public class GioHangBean {
	private int makh;
	private String tendienthoai;
	private int soluong;
	private int gia;
	private String anh;
	private String madienthoai;
	private int thanhtien;
	public GioHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public GioHangBean(int makh, String tendienthoai, int soluong, int gia, String anh, String madienthoai,
			int thanhtien) {
		super();
		this.makh = makh;
		this.tendienthoai = tendienthoai;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.madienthoai = madienthoai;
		this.thanhtien = soluong*gia;
	}
	public int getMakh() {
		return makh;
	}
	public void setMakh(int makh) {
		this.makh = makh;
	}
	public String getTendienthoai() {
		return tendienthoai;
	}
	public void setTendienthoai(String tendienthoai) {
		this.tendienthoai = tendienthoai;
	}
	public int getSoluong() {
		return soluong;
	}
	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}
	public int getGia() {
		return gia;
	}
	public void setGia(int gia) {
		this.gia = gia;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMadienthoai() {
		return madienthoai;
	}
	public void setMadienthoai(String madienthoai) {
		this.madienthoai = madienthoai;
	}
	public int getThanhtien() {
		return soluong*gia;
	}
	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}


}

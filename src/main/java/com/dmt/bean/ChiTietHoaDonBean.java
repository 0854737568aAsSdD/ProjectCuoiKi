package com.dmt.bean;

public class ChiTietHoaDonBean {
	private String madienthoai;
	private String soluongmua;
	private int mahoadon;

	public ChiTietHoaDonBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ChiTietHoaDonBean(String madienthoai, String soluongmua, int mahoadon) {
		super();
		this.madienthoai = madienthoai;
		this.soluongmua = soluongmua;
		this.mahoadon = mahoadon;
	}

	public String getMadienthoai() {
		return madienthoai;
	}

	public void setMadienthoai(String madienthoai) {
		this.madienthoai = madienthoai;
	}

	public String getSoluongmua() {
		return soluongmua;
	}

	public void setSoluongmua(String soluongmua) {
		this.soluongmua = soluongmua;
	}

	public int getMahoadon() {
		return mahoadon;
	}

	public void setMahoadon(int mahoadon) {
		this.mahoadon = mahoadon;
	}

}

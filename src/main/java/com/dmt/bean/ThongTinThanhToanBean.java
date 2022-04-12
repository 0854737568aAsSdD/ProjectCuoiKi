package com.dmt.bean;

import java.sql.Date;

public class ThongTinThanhToanBean {
	private int MaChiTietHoaDon;
	private int MaHoaDon;
	private String makh;
	private String TenKh;
	private Date NgayMua;
	private int SoLuongMua;
	private int gia;
	private int damua;

	public ThongTinThanhToanBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ThongTinThanhToanBean(int maChiTietHoaDon, int maHoaDon, String makh, String tenKh, Date ngayMua,
			int soLuongMua, int gia, int damua) {
		super();
		MaChiTietHoaDon = maChiTietHoaDon;
		MaHoaDon = maHoaDon;
		this.makh = makh;
		TenKh = tenKh;
		NgayMua = ngayMua;
		SoLuongMua = soLuongMua;
		this.gia = gia;
		this.damua = damua;
	}

	public int getMaChiTietHoaDon() {
		return MaChiTietHoaDon;
	}

	public void setMaChiTietHoaDon(int maChiTietHoaDon) {
		MaChiTietHoaDon = maChiTietHoaDon;
	}

	public int getMaHoaDon() {
		return MaHoaDon;
	}

	public void setMaHoaDon(int maHoaDon) {
		MaHoaDon = maHoaDon;
	}

	public String getMakh() {
		return makh;
	}

	public void setMakh(String makh) {
		this.makh = makh;
	}

	public String getTenKh() {
		return TenKh;
	}

	public void setTenKh(String tenKh) {
		TenKh = tenKh;
	}

	public Date getNgayMua() {
		return NgayMua;
	}

	public void setNgayMua(Date ngayMua) {
		NgayMua = ngayMua;
	}

	public int getSoLuongMua() {
		return SoLuongMua;
	}

	public void setSoLuongMua(int soLuongMua) {
		SoLuongMua = soLuongMua;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getDamua() {
		return damua;
	}

	public void setDamua(int damua) {
		this.damua = damua;
	}

}

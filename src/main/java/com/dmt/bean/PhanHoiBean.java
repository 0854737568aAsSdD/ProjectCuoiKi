package com.dmt.bean;

public class PhanHoiBean {
	private String hoten;
	private int makh;
	private String noidung;
	private String phanhoi;
	private int xacnhan;
	private int maphanhoi;
	public PhanHoiBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PhanHoiBean(String hoten, int makh, String noidung, String phanhoi, int xacnhan, int maphanhoi) {
		super();
		this.hoten = hoten;
		this.makh = makh;
		this.noidung = noidung;
		this.phanhoi = phanhoi;
		this.xacnhan = xacnhan;
		this.maphanhoi = maphanhoi;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public int getMakh() {
		return makh;
	}
	public void setMakh(int makh) {
		this.makh = makh;
	}
	public String getNoidung() {
		return noidung;
	}
	public void setNoidung(String noidung) {
		this.noidung = noidung;
	}
	public String getPhanhoi() {
		return phanhoi;
	}
	public void setPhanhoi(String phanhoi) {
		this.phanhoi = phanhoi;
	}
	public int getXacnhan() {
		return xacnhan;
	}
	public void setXacnhan(int xacnhan) {
		this.xacnhan = xacnhan;
	}
	public int getMaphanhoi() {
		return maphanhoi;
	}
	public void setMaphanhoi(int maphanhoi) {
		this.maphanhoi = maphanhoi;
	}


}

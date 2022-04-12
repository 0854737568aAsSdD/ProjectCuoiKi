package com.dmt.bean;

public class LoaiBean {
	private String maloai;
	private String tenloai;
	private String anhloai;

	public LoaiBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LoaiBean(String maloai, String tenloai, String anhloai) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
		this.anhloai = anhloai;
	}

	public String getMaloai() {
		return maloai;
	}

	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}

	public String getTenloai() {
		return tenloai;
	}

	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}

	public String getAnhloai() {
		return anhloai;
	}

	public void setAnhloai(String anhloai) {
		this.anhloai = anhloai;
	}

}

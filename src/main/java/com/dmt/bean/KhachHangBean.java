package com.dmt.bean;

public class KhachHangBean {
	private int makh;
	private String tendn;
	private String Hoten;
	private String Diachi;
	private String sdt;
	private String email;
	private String matkhau;

	public KhachHangBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public KhachHangBean(int makh, String tendn, String hoten, String diachi, String sdt, String email,
			String matkhau) {
		super();
		this.makh = makh;
		this.tendn = tendn;
		Hoten = hoten;
		Diachi = diachi;
		this.sdt = sdt;
		this.email = email;
		this.matkhau = matkhau;
	}

	public int getMakh() {
		return makh;
	}

	public void setMakh(int makh) {
		this.makh = makh;
	}

	public String getTendn() {
		return tendn;
	}

	public void setTendn(String tendn) {
		this.tendn = tendn;
	}

	public String getHoten() {
		return Hoten;
	}

	public void setHoten(String hoten) {
		Hoten = hoten;
	}

	public String getDiachi() {
		return Diachi;
	}

	public void setDiachi(String diachi) {
		Diachi = diachi;
	}

	public String getSdt() {
		return sdt;
	}

	public void setSdt(String sdt) {
		this.sdt = sdt;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

}
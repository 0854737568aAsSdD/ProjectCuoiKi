package com.dmt.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bean.GioHangBean;
import com.dmt.bean.KhachHangBean;
import com.dmt.bo.ChiTietHoaDonBo;
import com.dmt.bo.HoaDonBo;

@Controller
public class DatMuaHangController {
	@RequestMapping("/DatMuaHangController")
	public String datMua(HttpServletRequest request, HttpSession session) {
		HoaDonBo hdBo = new HoaDonBo();
		ChiTietHoaDonBo chitietbo = new ChiTietHoaDonBo();
		KhachHangBean kh = (KhachHangBean) session.getAttribute("khachhang");
		if (kh == null) {
			request.setAttribute("xacnhan", "xacnhan");
		} else {
			try {
				hdBo.getHoaDon(kh.getMakh());
				ArrayList<GioHangBean> ghbean = (ArrayList<GioHangBean>) session.getAttribute("giohang");
				chitietbo.getChiTietHoaDon(ghbean);
				request.setAttribute("kiemtra", "kiemtra");
			} catch (Exception e) {
				// TODO: handle exception
			}
		}

		return "Cart";
	}

}

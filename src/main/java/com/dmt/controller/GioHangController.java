//package com.dmt.controller;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//import com.dmt.bean.GioHangBean;
//import com.dmt.bo.GioHangBo;
//
//@Controller
//public class GioHangController {
//	@Autowired(required = true)
//	GioHangBo bo;
//
//	@RequestMapping(value = "add", method = RequestMethod.GET)
//	public String addGiohang(HttpServletRequest request) {
//		String makh = request.getParameter("makh");
//		if (makh == null) {
//			return "ThemThatBai";
//		} else {
//			String madienthoai = request.getParameter("madienthoai");
//			String tendienthoai = request.getParameter("tendienthoai");
//			int soluong = 1;
//			String anh = request.getParameter("anh");
//			GioHangBean gh = new GioHangBean();
//			gh.setMakh(Integer.parseInt(makh));
//			gh.setTendienthoai(tendienthoai);
//			gh.setSoluong(soluong);
//			gh.setAnh(anh);
//			gh.setMadienthoai(madienthoai);
//			bo.addDienThoai(gh);
//			return "ThemThanhCong";
//		}
//	}
//
//}

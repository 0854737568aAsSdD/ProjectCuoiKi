package com.dmt.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bean.KhachHangBean;
import com.dmt.bean.LichSuBean;
import com.dmt.bo.LichSuBo;

@Controller
public class LichSuController {
	@RequestMapping("/LichSuController")
	public String voidLichSu(HttpServletRequest request, HttpSession session) {
		try {
			LichSuBo bo = new LichSuBo();
			KhachHangBean kh = (KhachHangBean) session.getAttribute("khachhang");
			ArrayList<LichSuBean> sbean = bo.getLichSu(kh.getMakh());
			request.setAttribute("history", sbean);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "History";
	}

}

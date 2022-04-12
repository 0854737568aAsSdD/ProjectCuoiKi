package com.dmt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dmt.bean.AdminBean;
import com.dmt.bean.DienThoaiBean;
import com.dmt.bean.LoaiBean;
import com.dmt.bo.AdminBo;
import com.dmt.bo.DienThoaiBo;
import com.dmt.bo.LoaiBo;


@Controller
public class AdminController {
	@Autowired
	DienThoaiBo dbo;
	@Autowired
	LoaiBo lbo;
	@RequestMapping(value = "/Admin", method = RequestMethod.GET)
	public String dangNhapAdmin() {
		return "Admin";
	}

	@RequestMapping(value = "/Admin", method = RequestMethod.POST)
	public String kiemtra(HttpServletRequest request, HttpSession session) {
		try {
			String tendn = request.getParameter("username");
			String matkhau = request.getParameter("pwd");
			AdminBo bo = new AdminBo();
			AdminBean adminbean = bo.ktdn(tendn, matkhau);
			if (adminbean != null) {
				session.setAttribute("admin", adminbean);
			}
			if (tendn != null || matkhau != null) {
				if (adminbean == null)
					request.setAttribute("saidangnhaproinhe", "1");
			}

		} catch (Exception e) {
			// TODO: handle exception
		}
		return "HomeAdmin";
	}

	@RequestMapping(value = "/QlPhone", method = RequestMethod.GET)
	public String GetSach(HttpServletRequest request, HttpSession session) {

		try {
			List<LoaiBean> lbean = lbo.getAllusers();
			System.out.println(lbean.size());
			List<DienThoaiBean> dbean = dbo.getPhone();
			String loaidth = request.getParameter("txtloai");
			String timkiem = request.getParameter("txttk");
			request.setAttribute("loai", lbean);
			if (loaidth == null) {
				request.setAttribute("tensach", dbean);
			} else {
				dbean = dbo.getDienThoai(loaidth);
				request.setAttribute("tensach", dbean);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "HomeAdmin";
	}

}

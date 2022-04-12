package com.dmt.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bean.LoaiBean;
import com.dmt.bo.LoaiBo;

@Controller
public class SuaSachController {
	@Autowired
	LoaiBo lbo;

	@RequestMapping("/TauVuTru")
	public String voidsua(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			if (request.getParameter("madienthoai") != null) {
				List<LoaiBean> lbean = lbo.getAllusers();
				request.setAttribute("loai", lbean);
				String madienthoai = request.getParameter("madienthoai");
				request.setAttribute("madienthoai", madienthoai);
				String tendienthoai = request.getParameter("tendienthoai");
				request.setAttribute("tendienthoai", tendienthoai);
				int gia = Integer.parseInt(request.getParameter("gia"));
				request.setAttribute("gia", gia);
				String manhinh = request.getParameter("manhinh");
				request.setAttribute("manhinh", manhinh);
				String hedieuhanh = request.getParameter("hedieuhanh");
				request.setAttribute("hedieuhanh", hedieuhanh);
				String camerasau = request.getParameter("camerasau");
				request.setAttribute("camerasau", camerasau);
				String cameratruoc = request.getParameter("cameratruoc");
				request.setAttribute("cameratruoc", cameratruoc);
				String ram = request.getParameter("ram");
				request.setAttribute("ram", ram);
				String bonhotrong = request.getParameter("bonhotrong");
				request.setAttribute("bonhotrong", bonhotrong);
				String cpu = request.getParameter("cpu");
				request.setAttribute("cpu", cpu);
				String anh = request.getParameter("anh");
				request.setAttribute("anh", anh);
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return "UpdateSachDuTru";

	}

}

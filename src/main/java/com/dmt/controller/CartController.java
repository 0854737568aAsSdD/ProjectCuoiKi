package com.dmt.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bean.GioHangBean;
import com.dmt.bo.CartBo;

@Controller
public class CartController {
	@RequestMapping("/add")
	public String themhang(HttpServletRequest request, HttpSession session) {
		CartBo bo = new CartBo();
		String makh = request.getParameter("makh");
		String a = request.getParameter("xoa");
		if (makh == null) {
			return "ThemSai";
		} else {
			String madienthoai = request.getParameter("madienthoai");
			String tendienthoai = request.getParameter("tendienthoai");
			int soluong = 1;
			String anh = request.getParameter("anh");
			String gia = request.getParameter("gia");
			System.out.println(gia);
			if (session.getAttribute("giohang") == null) {
				ArrayList<GioHangBean> ghbean = new ArrayList<GioHangBean>();
				ghbean.add(bo.ThemDanhSach(tendienthoai, soluong, Integer.parseInt(gia), anh, madienthoai));
				session.setAttribute("giohang", ghbean);
			} else {
				ArrayList<GioHangBean> giohang = (ArrayList<GioHangBean>) session.getAttribute("giohang");
				int n = giohang.size();
				Boolean check = false;
				for (GioHangBean ghbean : giohang) {
					if (ghbean.getMadienthoai().equals(madienthoai)) {
						ghbean.setSoluong(ghbean.getSoluong() + 1);
						check = true;
					}
				}
				if (check == false) {
					giohang.add(bo.ThemDanhSach(tendienthoai, soluong, Integer.parseInt(gia), anh, madienthoai));

				}

			}
			ArrayList<GioHangBean> giohang = (ArrayList<GioHangBean>) session.getAttribute("giohang");

			long n = bo.sotien(giohang);
			session.setAttribute("sotien", n);
			int soluongne = giohang.size();
			session.setAttribute("soluongnhe", soluongne);
			return "Cart";

		}
	}

	@RequestMapping("/handle")
	public String xoahang(HttpServletRequest request, HttpSession session) {
		CartBo ghbo = new CartBo();
		String a = request.getParameter("xoa");
		if (a != null) {
			ArrayList<GioHangBean> ghbean = (ArrayList<GioHangBean>) session.getAttribute("giohang");
			int vitri = Integer.parseInt(a);
			ghbean.remove(vitri);
			long sotien = ghbo.sotien(ghbean);
			session.setAttribute("sotien", sotien);
			session.setAttribute("giohang", ghbean);
		}
		return "Cart";
	}

	@RequestMapping("/number")
	public String edit(HttpServletRequest request, HttpSession session) {
		CartBo ghbo = new CartBo();
		String txtvitri = request.getParameter("vitri");
		String txtsoluong = request.getParameter("soluong");
		int vitri = Integer.parseInt(txtvitri);
		int soluong = Integer.parseInt(txtsoluong);
		ArrayList<GioHangBean> ghbean = (ArrayList<GioHangBean>) session.getAttribute("giohang");
		ghbean.get(vitri).setSoluong(soluong);
		long sotien = ghbo.sotien(ghbean);
		session.setAttribute("sotien", sotien);
		session.setAttribute("giohang", ghbean);
		return "Cart";
	}
}

package com.dmt.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bean.ThongTinThanhToanBean;
import com.dmt.bo.ThongTinThanhToanBo;
import com.dmt.bo.XacNhanThanhToanBo;

@Controller
public class AdminThanhToanController {
	@RequestMapping("/AdminThanhToanController")
	public String voidshow(HttpServletRequest request) {
		try {
			ThongTinThanhToanBo thongtin = new ThongTinThanhToanBo();
			ArrayList<ThongTinThanhToanBean> ds = thongtin.getThanhToan();
			request.setAttribute("thanhtoan", ds);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return "QuanLyKhachHang";
	}
	@RequestMapping("/XacNhanChoAdminController")
		public String voidshow123(HttpServletRequest request, HttpServletResponse response) {
			try {
				request.setCharacterEncoding("utf-8");
				response.setCharacterEncoding("utf-8");
				String machitiethoadon = request.getParameter("machitiet");
				XacNhanThanhToanBo xacnhan = new XacNhanThanhToanBo();
				int machitiet = Integer.parseInt(machitiethoadon);
                xacnhan.XacNhanThanhToanMotQuyen(machitiet);
    			ThongTinThanhToanBo thongtin = new ThongTinThanhToanBo();
    			ArrayList<ThongTinThanhToanBean> ds = thongtin.getThanhToan();
    			request.setAttribute("thanhtoan", ds);
			} catch (Exception e) {
				// TODO: handle exception
			}
			return "QuanLyKhachHang";
		}
	}
	


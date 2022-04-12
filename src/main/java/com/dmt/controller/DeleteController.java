package com.dmt.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dmt.bo.AddSachBo;

@Controller
public class DeleteController {
	@RequestMapping("/Delete")
	public String voidshow(HttpServletRequest request) {
		try {
			String madienthoai = request.getParameter("madienthoai");

			AddSachBo bo = new AddSachBo();
			bo.DeleteSach(madienthoai);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "HomeAdmin";
	}

}

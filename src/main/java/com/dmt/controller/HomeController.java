package com.dmt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/About")
	public String voidshow() {
		return "About";
	}

	@RequestMapping("/Home")
	public String voidshow123() {
		return "Home";
	}

}

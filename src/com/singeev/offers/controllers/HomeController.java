package com.singeev.offers.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String showHome() {
		return "home";
	}

	@RequestMapping("/error")
	public String showError() {
		return "error";
	}

	@RequestMapping("/admin")
	public String showAdmin() {
		return "admin";
	}

}

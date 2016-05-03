package com.singeev.offers.controllers;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	private static Logger logger = Logger.getLogger(HomeController.class);

	@RequestMapping("/")
	public String showHome() {
		logger.info("Show home page...");
		return "home";
	}

	@RequestMapping("/error")
	public String showError() {
		logger.info("Show error page...");
		return "error";
	}

}

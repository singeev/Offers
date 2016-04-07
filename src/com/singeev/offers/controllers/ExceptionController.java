package com.singeev.offers.controllers;

import org.springframework.security.access.AccessDeniedException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ExceptionController {

	@ExceptionHandler(AccessDeniedException.class)
	public String accessException(AccessDeniedException ex) {
		ex.printStackTrace();
		return "login";
	}

	@ExceptionHandler(Exception.class)
	public String handleException(Exception ex) {
		ex.printStackTrace();
		return "error";
	}
}

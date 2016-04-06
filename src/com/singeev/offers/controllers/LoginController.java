package com.singeev.offers.controllers;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.singeev.offers.dao.User;
import com.singeev.offers.service.UsersService;

@Controller
public class LoginController {

	@Autowired
	private UsersService service;

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/newaccount")
	public String showNewAccount(Model model) {
		model.addAttribute("user", new User());
		return "newaccount";
	}

	@RequestMapping(value = "/createaccount", method = RequestMethod.POST)
	public String createNewAccount(@Valid User user, BindingResult result) {
		if (result.hasErrors()) {
			return "createaccount";
		}
		user.setAuthority("user");
		user.setEnabled(true);
		service.create(user);
		return "accountcreated";
	}
}

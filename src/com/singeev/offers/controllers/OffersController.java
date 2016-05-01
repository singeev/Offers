package com.singeev.offers.controllers;

import java.security.Principal;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.singeev.offers.dao.Offer;
import com.singeev.offers.service.OffersService;

@Controller
public class OffersController {

	@Autowired
	private OffersService service;

	@RequestMapping("/offers")
	public String showOffers(Model model) {
		model.addAttribute("offers", service.getCurrent());
		return "offers";
	}

	@RequestMapping("/createoffer")
	public String createOffer(Model model) {
		model.addAttribute("offer", new Offer());
		return "createoffer";
	}

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String docreate(Model model, @Valid Offer offer, BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return "createoffer";
		}
		offer.setUsername(principal.getName());
		service.create(offer);
		return "offercreated";
	}

	@RequestMapping(value = "/deleteoffer", method = RequestMethod.GET)
	public String deleteOffer(@RequestParam int id) {
		service.delete(id);
		return "redirect:offers";
	}
}

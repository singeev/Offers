package com.singeev.offers.controllers;

import java.security.Principal;

import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.singeev.offers.dao.Offer;
import com.singeev.offers.service.OffersService;

@Controller
public class OffersController {

	private static Logger logger = Logger.getLogger(OffersController.class);

	@Autowired
	private OffersService service;

	@RequestMapping("/offers")
	public String showOffers(Model model) {
		model.addAttribute("offers", service.getCurrent());
		logger.info("Show offers page.");
		return "offers";
	}

	@RequestMapping("/createoffer")
	public String createOffer(Model model) {
		model.addAttribute("offer", new Offer());
		logger.info("Show page to create a new offer.");
		return "createoffer";
	}

	@RequestMapping(value = "/docreate", method = RequestMethod.POST)
	public String docreate(Model model, @Valid Offer offer, BindingResult result, Principal principal) {
		if (result.hasErrors()) {
			return "createoffer";
		}
		offer.setUsername(principal.getName());
		service.create(offer);
		logger.info("Has been created new offer: " + offer);
		return "offercreated";
	}

	@RequestMapping(value = "/updateoffer", method = RequestMethod.GET)
	public String showAccountForUpdate(ModelMap model, @RequestParam int id) {
		model.addAttribute("offer", service.getOffer(id));
		logger.info("Show page to edit details for offer with id[" + id + "].");
		return "updateoffer";
	}

	@RequestMapping(value = "/updateoffer", method = RequestMethod.POST)
	public String updateAccount(@Valid Offer offer, BindingResult result) {
		if (result.hasErrors()) {
			return "updateoffer";
		}
		if (!service.isExists(offer.getId())) {
			return "redirect:offers";
		}
		service.updateOffer(offer);
		logger.info("Offer with id[" + offer.getId() + "] has been updated.");
		return "redirect:offers";
	}

	@RequestMapping(value = "/deleteoffer", method = RequestMethod.GET)
	public String deleteOffer(@RequestParam int id) {
		service.delete(id);
		logger.info("Offer with id[" + id + "] has been deleted.");
		return "redirect:offers";
	}
}

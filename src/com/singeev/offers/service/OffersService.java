package com.singeev.offers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.singeev.offers.dao.Offer;
import com.singeev.offers.dao.OffersDao;

@Service("offersService")
public class OffersService {

	@Autowired
	private OffersDao offersDao;

	public List<Offer> getCurrent() {
		return offersDao.getOffers();
	}

	public void create(Offer offer) {
		offersDao.create(offer);
	}

	public void delete(int id) {
		offersDao.delete(id);
	}

}

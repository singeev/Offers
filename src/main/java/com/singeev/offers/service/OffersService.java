package com.singeev.offers.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
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

	@Secured({ "ROLE_USER", "ROLE_ADMIN" })
	public void create(Offer offer) {
		offersDao.create(offer);
	}

	@Secured({ "ROLE_USER", "ROLE_ADMIN" })
	public Offer getOffer(int id){
		return offersDao.getOffer(id);
	}

	@Secured({ "ROLE_USER", "ROLE_ADMIN" })
	public boolean updateOffer(Offer offer){
		return offersDao.update(offer);
	}

	public void delete(int id) {
		offersDao.delete(id);
	}

	public boolean isExists(int id) {
		return offersDao.isExists(id);
	}
}

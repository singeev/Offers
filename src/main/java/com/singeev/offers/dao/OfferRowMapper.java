package com.singeev.offers.dao;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OfferRowMapper implements RowMapper<Offer> {
    @Override
    public Offer mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User();

        user.setAuthority(rs.getString("authority"));
        user.setName(rs.getString("name"));
        user.setUsername(rs.getString("username"));
        user.setEmail(rs.getString("email"));
        user.setEnabled(true);

        Offer offer = new Offer();

        offer.setId(rs.getInt("id"));
        offer.setText(rs.getString("text"));
        offer.setUser(user);

        return offer;
    }
}

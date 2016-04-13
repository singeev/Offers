package com.singeev.offers.test.tests;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@ActiveProfiles("dev")
@ContextConfiguration(locations = { "classpath:com/singeev/offers/config/dao-context.xml", "classpath:com/singeev/offers/config/security-context.xml",
		"classpath:com/singeev/offers/test/config/datasource.xml", })
@RunWith(SpringJUnit4ClassRunner.class)
public class UsersDaoTests {

	@Test
	public void testCreateUser() {
		assertEquals("Dummy test!", 1, 1);
	}

}

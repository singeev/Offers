package com.singeev.offers.test.tests;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.List;

import javax.sql.DataSource;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.singeev.offers.dao.User;
import com.singeev.offers.dao.UsersDao;

@ActiveProfiles("dev")
@ContextConfiguration(locations = {
		"classpath:dao-context.xml",
		"classpath:security-context.xml",
		"classpath:datasource.xml" })
@RunWith(SpringJUnit4ClassRunner.class)
public class UsersDaoTests {

	@Autowired
	private DataSource dataSource;

	@Autowired
	private UsersDao usersDao;

	@Before
	public void init() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		jdbc.execute("delete from offers");
		jdbc.execute("delete from users");
	}

	@Test
	public void testUsers() {
		User user = new User("Thor", "Thor the Odin's son", "password", "thor@gmail.com", true, "ROLE_USER");
		assertTrue("User creation should return true: ", usersDao.create(user));
		List<User> users = usersDao.getAllUsers();
		assertEquals("Number of users should be 1.", 1, users.size());
		assertTrue("User should exist.", usersDao.exists(user.getUsername()));
		assertEquals("Created user should be indentical to retrieved user.", user, users.get(0));
	}

}

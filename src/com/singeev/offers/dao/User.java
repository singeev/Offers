package com.singeev.offers.dao;

import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class User {

	@NotBlank(message = "Username can't be blank!")
	@Size(min = 5, max = 20)
	@Pattern(regexp = "^\\w{5,}$", message = "Username should contain only letters!")
	private String username;

	@NotBlank(message = "Password can't be blank!")
	@Size(min = 5, max = 20, message = "Password should be between 5 and 20 characters!")
	@Pattern(regexp = "^\\S+$", message = "Password should'n contain spaces!")
	private String password;

	@NotBlank(message = "E-mail can't be blank!")
	@Email(message = "Looks like it's not a valid e-mail!")
	private String email;

	private boolean enabled = false;
	private String authority;

	public User() {

	}

	public User(String username, String password, String email, boolean enabled, String authority) {
		this.username = username;
		this.password = password;
		this.email = email;
		this.enabled = enabled;
		this.authority = authority;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	@Override
	public String toString() {
		return "User [username=" + username + ", password=" + password + ", email=" + email + ", enabled=" + enabled + ", authority=" + authority
				+ "]";
	}
}

package com.singeev.offers.dao;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import com.singeev.offers.validation.MyEmailValidation;

public class Offer {
	private int id;

	// validating error messages are in messages.properties file

	@NotBlank
	@Size(min = 4, max = 100)
	private String name;

	@NotBlank
	@MyEmailValidation(min = 6)
	private String email;

	@Size(min = 10, max = 255)
	private String text;

	public Offer() {

	}

	public Offer(String name, String email, String text) {
		this.name = name;
		this.email = email;
		this.text = text;
	}

	public Offer(int id, String name, String email, String text) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.text = text;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Offer [id=" + id + ", name=" + name + ", email=" + email + ", text=" + text + "]";
	}
}

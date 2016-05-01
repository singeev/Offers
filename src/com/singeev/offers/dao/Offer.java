package com.singeev.offers.dao;

import javax.validation.constraints.Size;

public class Offer {
	private int id;

	// validating error messages are in messages.properties file

	@Size(min = 10, max = 255)
	private String text;

	private User user;

	public Offer() {
		this.user = new User();
	}

	public Offer(User user, String text) {
		this.text = text;
		this.user = user;
	}

	public Offer(int id, String text, User user) {
		this.id = id;
		this.text = text;
		this.user = user;
	}

	public String getUsername() {
		return user.getUsername();
	}

	public void setUsername(String username) {
		user.setUsername(username);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	@Override
	public String toString() {
		return "Offer [id=" + id + ", text=" + text + ", user=" + user + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((text == null) ? 0 : text.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj) {
			return true;
		}
		if (obj == null) {
			return false;
		}
		if (getClass() != obj.getClass()) {
			return false;
		}
		Offer other = (Offer) obj;
		if (text == null) {
			if (other.text != null) {
				return false;
			}
		} else if (!text.equals(other.text)) {
			return false;
		}
		if (user == null) {
			if (other.user != null) {
				return false;
			}
		} else if (!user.equals(other.user)) {
			return false;
		}
		return true;
	}
}

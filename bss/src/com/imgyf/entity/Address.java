package com.imgyf.entity;

import java.io.Serializable;

public class Address implements Serializable{
	private int id;
	private int userId;
	private String name;
	private String phone;
	private String site;

	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Address(int id, int userId, String name, String phone, String site) {
		super();
		this.id = id;
		this.userId = userId;
		this.name = name;
		this.phone = phone;
		this.site = site;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	

	public int getUid() {
		return userId;
	}

	public void setUid(int userId) {
		this.userId = userId;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + ((site == null) ? 0 : site.hashCode());
		result = prime * result + userId;
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Address other = (Address) obj;
		if (id != other.id)
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (site == null) {
			if (other.site != null)
				return false;
		} else if (!site.equals(other.site))
			return false;
		if (userId != other.userId)
			return false;
		return true;
	}


	@Override
	public String toString() {
		return "Address [id=" + id + ", userId=" + userId + ", name=" + name
				+ ", phone=" + phone + ", site=" + site + "]";
	}


	
}

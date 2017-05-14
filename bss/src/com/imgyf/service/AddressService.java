package com.imgyf.service;

import java.util.List;

import com.imgyf.entity.Address;

public interface AddressService {
	public List<Address> look(int userId) throws Exception;

	public void add(Address address) throws Exception;

	public void modify(Address address) throws Exception;

	public void deleteById(int addressId) throws Exception;

	public void deleteByUserId(int userId) throws Exception;

}

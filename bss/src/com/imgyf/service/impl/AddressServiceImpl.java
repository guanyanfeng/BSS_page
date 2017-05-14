package com.imgyf.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.imgyf.entity.Address;
import com.imgyf.mapper.AddressMapper;
import com.imgyf.service.AddressService;
@Service("addressService")
public class AddressServiceImpl implements AddressService{
	@Autowired
	private AddressMapper addressMapper;
	@Override
	public List<Address> look(int userId) throws Exception {
		
		return addressMapper.queryByUserId(userId);
	}

	@Override
	public void add(Address address) throws Exception {
		addressMapper.add(address);
		
	}

	@Override
	public void modify(Address address) throws Exception {
		Address a=addressMapper.queryById(address.getId());
		if(a==null){
			throw new Exception("该地址不存在");
		}
		addressMapper.update(address);
	}

	@Override
	public void deleteById(int addressId) throws Exception {
		addressMapper.delete(addressId);
		
	}

	@Override
	public void deleteByUserId(int userId) throws Exception {
		addressMapper.deleteByUserId(userId);
		
	}

}

package com.seschool.bank.dao;

import com.seschool.bank.vo.Customer;

public interface CustomerMapper {
	public Customer searchCustomer(Customer vo); /*아이디, 비밀번호 찾기*/
	public Customer selectCustomer(String custid); /*회원정보검색*/
	public int insertCustomer(Customer vo); /*회원가입*/
	public int updateCustomer(Customer vo); /*회원정보수정*/
	public Customer login(Customer vo); /*로그인*/
}

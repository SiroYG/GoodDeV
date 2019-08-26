package com.seschool.bank.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seschool.bank.vo.Customer;

@Repository
public class CustomerDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	/*아이디, 비밀번호 찾기*/
	public Customer searchCustomer(Customer vo){
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		Customer result = null;
		try{
			result = mapper.searchCustomer(vo);
		}catch(Exception e){
			return null;
		}
		
		return result;
	}
	
	/*회원정보검색*/
	public Customer selectCustomer(String custid){
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.selectCustomer(custid);
	}
	
	/*회원가입*/
	public int insertCustomer(Customer vo){
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.insertCustomer(vo);
	}
	
	/*회원정보수정*/
	public int updateCustomer(Customer vo){
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.updateCustomer(vo);
	}
	
	/*로그인*/
	public Customer login(Customer vo){
		CustomerMapper mapper = sqlSession.getMapper(CustomerMapper.class);
		return mapper.login(vo);
	}
}

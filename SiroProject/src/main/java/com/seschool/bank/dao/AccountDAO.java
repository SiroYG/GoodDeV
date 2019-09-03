package com.seschool.bank.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seschool.bank.vo.Account;

@Repository
public class AccountDAO {
	
	@Autowired
	private SqlSession sqlSession;

	public ArrayList<Account> listAccount(Account account) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.listAccount(account);
	}

	public int insertAccount(Account account) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.insertAccount(account);
	}

	public void deposit(Account account) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		mapper.deposit(account);
	}

	public void withdraw(Account account) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		mapper.withdraw(account);
	}

	public ArrayList<Account> transferList(Account account) {
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.transferList(account);
	}

	public Account accCheck(Account account) {
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.accCheck(account);
	}

	public void transfer(Account account1, Account account2) {
		// TODO Auto-generated method stub
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		
		mapper.withdraw(account1);//출금
		mapper.deposit(account2);//입금
		
	}

	public Account searchAccount(String num) {
		AccountMapper mapper = sqlSession.getMapper(AccountMapper.class);
		return mapper.searchAccount(num);
	}
	
}

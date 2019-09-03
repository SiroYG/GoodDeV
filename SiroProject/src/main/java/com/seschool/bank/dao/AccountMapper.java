package com.seschool.bank.dao;

import java.util.ArrayList;

import com.seschool.bank.vo.Account;

public interface AccountMapper {
	//계좌리스트
	public ArrayList<Account> listAccount(Account account);
	//계좌 등록
	public int insertAccount(Account account);
	//입금
	public void deposit(Account account);
	//출금
	public void withdraw(Account account);
	//송금계좌 선택 리스트(본인 계좌)
	public ArrayList<Account> transferList(Account account);
	//송금계좌 체크(다른 게좌)
	public Account accCheck(Account account);
	//계좌번호 랜덤생성
	public Account searchAccount(String num);

}

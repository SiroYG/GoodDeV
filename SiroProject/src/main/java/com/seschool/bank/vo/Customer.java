package com.seschool.bank.vo;

import lombok.Data;

@Data
public class Customer {
    private String custid;//고객ID
    private String password; //비밀번호
    private String email;//고객 email
    private String division;//회원 구분 값(개인고객 : personal, 법인고객 : company)
    private String name;//고객 이름
    private String idno;//식별번호(개인 : 주민번호, 법인 : 사업자번호)
    private String address;//고객주소
}

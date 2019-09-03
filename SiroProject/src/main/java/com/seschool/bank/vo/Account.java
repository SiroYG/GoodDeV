package com.seschool.bank.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {
	private String accountno;//계좌번호
    private String custid;//고객 ID(fk)
    private String accounttype;//계좌 구분 값(예금계좌 : checking, 정기적금계좌 : saving, 대출계좌 : loan)
    private int balance;//잔고
    private int payment;//적금의 월 납입금
    private String interest;//이율(예금계좌 해당 없음)
    private String startdeposit;//적금/대출 시작일(예금계좌 해당 없음)
    private String enddeposit;//적금/대출 종료일(예금계좌 해당 없음)
    private String approval;//대출승인여부(승인완료 : Y, 승인대기 : N)
    private int years;
}

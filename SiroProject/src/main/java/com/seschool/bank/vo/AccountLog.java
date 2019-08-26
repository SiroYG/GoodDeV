 package com.seschool.bank.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountLog {
    private int logid;//일련번호(pk)
    private String custid;//고객id(fk)
    private String accountno;//계좌번호(fk)
    private String transferno;//이체 시 상대 계좌 번호
    private String eventdate;//거래 발생일
    private String eventtype;//거래 종류(입금 : deposit, 출금 : withdraw, 이체 : transfer)
    private String eventrecord;//거래 시 사용자가 입력한 내용
    private int amount;//거래 금액
    private int banalce;//거래 후 잔액
}

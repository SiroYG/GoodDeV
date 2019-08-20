package global.seshool.bank.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Account {
	String accountno;
	String custid;
	String accounttype;
	int balance;
	int payment;
	double interest;
	String startdeposit;
	String enddeposit;
	String term;
	String approval;
}

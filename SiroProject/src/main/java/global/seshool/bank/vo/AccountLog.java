package global.seshool.bank.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AccountLog {
	int logid;
	String cutid;
	String accountno;
	String transferno;
	String eventdate;
	String eventtype;
	String eventrecord;
	int amount;
	int balance;
	
}

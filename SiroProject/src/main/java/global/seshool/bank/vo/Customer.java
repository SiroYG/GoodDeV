package global.seshool.bank.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {
	String custid;
	String password;
	String email;
	String division;
	String name;
	String idno;
	String address;
		
}

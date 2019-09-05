package good.dev.support01.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {

	
	private String id;
	private String pw ;
	private String memberType ;
	private String email ;
	private int fundPrice ;
	private String memberName ;
	private String phoneNum ;

}

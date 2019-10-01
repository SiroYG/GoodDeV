package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class devMember {

	
	public String memberId;
	public String memberPw ;
	public String memberType ;
	public String email ;
	public int fundPrice ;
	public String memberName ;
	public String phoneNum ;

}

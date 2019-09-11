package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class devMember {

	
	private String memberId;
	private String memberPw ;
	private String memberType ;
	private String email ;
	private int fundPrice ;
	private String memberName ;
	private String phoneNum ;

}

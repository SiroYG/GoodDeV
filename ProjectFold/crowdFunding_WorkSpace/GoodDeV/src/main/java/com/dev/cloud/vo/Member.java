package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Member {

	
	public String id;
	public String pw ;
	public String memberType ;
	public String email ;
	public int fundPrice ;
	public String memberName ;
	public String phoneNum ;

}

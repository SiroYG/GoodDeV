package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Payment {
	private int amount;
	private String itemname;
	private String memberid;
	private String email;
	private String tel;
	private String addr;
	
}

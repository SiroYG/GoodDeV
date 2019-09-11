package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item_Survey {
	
	private int surveyNum ;
	private int questionNum;
	private int qValuable;
	private String etc ;
	private String writtenDate ;
}

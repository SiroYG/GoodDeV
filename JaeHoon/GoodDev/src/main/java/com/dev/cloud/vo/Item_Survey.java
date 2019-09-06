package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item_Survey {
	
	private int surveyNum ;
	private int itemNum;
	private int qScore;
	private String question ;
	private int surveyType ;
	private String etc ;
	private String item_survey_date ;
}

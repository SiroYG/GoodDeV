package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Question {
	
	
	private int questionNum;
	private int questionTimeNum ;
	private String question;
	private int avgSurvey;

}

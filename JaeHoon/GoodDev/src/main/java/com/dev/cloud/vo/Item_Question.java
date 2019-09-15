package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item_Question {
	
	
	private int questionNum;
	private int itemNum ;
	private String question;
	private String description;
	private String dueDate ;
	private String startDate ;

}

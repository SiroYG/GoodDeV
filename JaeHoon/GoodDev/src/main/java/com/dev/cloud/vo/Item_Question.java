package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Item_Question {
	
	private int itemNum ;
	private int questionNum;
	private String question;
	private String dueDate ;
}

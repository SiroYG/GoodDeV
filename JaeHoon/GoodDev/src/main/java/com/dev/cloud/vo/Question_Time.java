package com.dev.cloud.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Question_Time {

	public int questionTimeNum;
	public int itemNum;
	public String questionTitle;
	public String description;
	public String startDate;
	public String dueDate;
	public String etc;
	private String memberId;

}

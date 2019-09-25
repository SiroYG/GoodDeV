package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Survey {
	
	private int surveyNum ;
	private int questionNum;
	private int qValuable;
	private String writtenDate ;
	
	public int getqValuable() {
		return qValuable;
	}
	public void setqValuable(int qValuable) {
		this.qValuable = qValuable;
	}
	
}

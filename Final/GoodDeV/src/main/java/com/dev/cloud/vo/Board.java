package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {

private int boardNum ;
private String 	memberId ;
private String 	title;
private String 	content;
private String 	qType ;
private String 	qCategory ;
public String getqType() {
	return qType;
}
public void setqType(String qType) {
	this.qType = qType;
}
public String getqCategory() {
	return qCategory;
}
public void setqCategory(String qCategory) {
	this.qCategory = qCategory;
}
private String 	originalFilename;
private String 	saveFilename ;
private String 	boardDate ;
}

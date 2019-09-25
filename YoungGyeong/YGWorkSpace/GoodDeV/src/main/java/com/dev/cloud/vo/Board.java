package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Board {

public int boardNum ;
public String 	id ;
public String 	title;
public String 	content;
public String 	qType ;
public String 	qCategory ;
public String 	originalFilename;
public String 	saveFilename ;
public String 	boardDate ;


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


}

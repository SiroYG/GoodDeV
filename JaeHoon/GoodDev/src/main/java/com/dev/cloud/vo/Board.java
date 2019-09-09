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
private String 	originalFilename;
private String 	saveFilename ;
private String 	boardDate ;
}

package com.dev.cloud.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Document {

	private int DocumentNum;
	private int PatentsubNum;
	private String documentFilename;
	private String saveDocumentFilename;
	
}


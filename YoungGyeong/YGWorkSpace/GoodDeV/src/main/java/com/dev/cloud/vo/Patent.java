package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patent {
	private String patentNum ;
	private String patentName ;
	private String patentHolderName ;
	private String patentContent ;
	private String patentAppDate;
	private String patentRegDate ;
	private String patenttype ;
	
	
}

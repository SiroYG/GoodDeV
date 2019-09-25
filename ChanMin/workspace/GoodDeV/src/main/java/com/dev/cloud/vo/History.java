package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class History {
	
	private int HistoryNum ;
	private int itemNum ;
	private String comments ;
	private String itemVersion ;
	private String historyDate;
}

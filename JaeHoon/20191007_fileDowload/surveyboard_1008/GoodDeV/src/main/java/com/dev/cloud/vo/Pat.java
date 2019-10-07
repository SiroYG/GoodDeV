package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pat {  //특허 정보 검색 vo
	private String patentType;
	private String searchItem;
	private String searchWord;
	
}

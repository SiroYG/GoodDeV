package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PTI {

private int  PTI_seq ;
private int  itemNum ;
private String patentNum;
private String  contract ;
private String  contractDate ;

}

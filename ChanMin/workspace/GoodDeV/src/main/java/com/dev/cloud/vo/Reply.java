package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Reply {


private int replyNum;
private int boardNum;
private String reply ;
private String replyDate;
private String memberid;
}

package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Patentsub {

private int  PatentsubNum ;
private String	patentNum ;
private String	memberId;
private String	referenceFilename ;
private String	saveReferenceFilename ;
}

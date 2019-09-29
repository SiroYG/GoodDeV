package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
public class Board {

private int boardNum ;
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
private String 	MEMBERid ;
private String 	title;
private String 	content;
private String 	qType ;
private String 	qCategory ;
private String 	originalFilename;
private String 	saveFilename ;
private String 	boardDate ;
public int getBoardNum() {
	return boardNum;
}
public void setBoardNum(int boardNum) {
	this.boardNum = boardNum;
}

public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getOriginalFilename() {
	return originalFilename;
}
public void setOriginalFilename(String originalFilename) {
	this.originalFilename = originalFilename;
}
public String getSaveFilename() {
	return saveFilename;
}
public void setSaveFilename(String saveFilename) {
	this.saveFilename = saveFilename;
}
public String getBoardDate() {
	return boardDate;
}
public void setBoardDate(String boardDate) {
	this.boardDate = boardDate;
}
@Override
public String toString() {
	return "Board [boardNum=" + boardNum + ", MEMBERid=" + MEMBERid + ", title=" + title + ", content=" + content + ", qType="
			+ qType + ", qCategory=" + qCategory + ", originalFilename=" + originalFilename + ", saveFilename="
			+ saveFilename + ", boardDate=" + boardDate + "]";
}
public String getMEMBERid() {
	return MEMBERid;
}
public void setMEMBERid(String mEMBERid) {
	MEMBERid = mEMBERid;
}


}

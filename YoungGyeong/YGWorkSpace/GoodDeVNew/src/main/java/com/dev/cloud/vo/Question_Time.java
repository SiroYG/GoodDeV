package com.dev.cloud.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
public class Question_Time {

	public int questionTimeNum;
	public int itemNum;
	public String questionTitle;
	public String description;
	public String startDate;
	public String dueDate;
	public String etc;
	private String memberId;
	public int getQuestionTimeNum() {
		return questionTimeNum;
	}
	public void setQuestionTimeNum(int questionTimeNum) {
		this.questionTimeNum = questionTimeNum;
	}
	public int getItemNum() {
		return itemNum;
	}
	public void setItemNum(int itemNum) {
		this.itemNum = itemNum;
	}
	public String getQuestionTitle() {
		return questionTitle;
	}
	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getDueDate() {
		return dueDate;
	}
	public void setDueDate(String dueDate) {
		this.dueDate = dueDate;
	}
	public String getEtc() {
		return etc;
	}
	public void setEtc(String etc) {
		this.etc = etc;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	@Override
	public String toString() {
		return "Question_Time [questionTimeNum=" + questionTimeNum + ", itemNum=" + itemNum + ", questionTitle="
				+ questionTitle + ", description=" + description + ", startDate=" + startDate + ", dueDate=" + dueDate
				+ ", etc=" + etc + ", memberId=" + memberId + "]";
	}
	
	

}

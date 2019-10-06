package com.dev.cloud.vo;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
public class Chat {

	public int Chatnum;
	public int getChatnum() {
		return Chatnum;
	}
	public void setChatnum(int chatnum) {
		Chatnum = chatnum;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String memo;
	public String regdate;
}

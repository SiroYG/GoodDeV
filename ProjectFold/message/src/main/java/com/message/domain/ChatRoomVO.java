package com.message.domain;

public class ChatRoomVO {
	
	private String chatroom_id;
	private String USER_user_id;
	private String TUTOR_USER_user_id;
	private int CLASS_class_id;
	public String getChatroom_id() {
		return chatroom_id;
	}
	public void setChatroom_id(String chatroom_id) {
		this.chatroom_id = chatroom_id;
	}
	public String getUSER_user_id() {
		return USER_user_id;
	}
	public void setUSER_user_id(String uSER_user_id) {
		USER_user_id = uSER_user_id;
	}
	public String getTUTOR_USER_user_id() {
		return TUTOR_USER_user_id;
	}
	public void setTUTOR_USER_user_id(String tUTOR_USER_user_id) {
		TUTOR_USER_user_id = tUTOR_USER_user_id;
	}
	public int getCLASS_class_id() {
		return CLASS_class_id;
	}
	public void setCLASS_class_id(int cLASS_class_id) {
		CLASS_class_id = cLASS_class_id;
	}
	@Override
	public String toString() {
		return "ChatRoomVO [chatroom_id=" + chatroom_id + ", USER_user_id=" + USER_user_id + ", TUTOR_USER_user_id="
				+ TUTOR_USER_user_id + ", CLASS_class_id=" + CLASS_class_id + "]";
	}
	
	
	

	
	
}
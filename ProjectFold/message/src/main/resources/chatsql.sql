--0927 용경
CREATE TABLE MESSAGE(
	message_id number primary key,
	message_sender VARCHAR2(50) default null,
	message_receiver varchar2(50) default null,
	message_content varchar2(50) default null,
	message_sendTime date default sysdate,
	ChatRoom_chatroom_id number default null,
	message_readTime date default sysdate,
	user_user_id varchar2(50) default null,
	tutor_user_user_id varchar2(50) default null,
	class_class_id number default null
)
/

CREATE TABLE CHATROOM
(
	chatroom_id number primary key,
	user_user_id varchar2(50) default null,
	tutor_user_user_id varchar2(50) default null,
	class_class_id number default null
)
/

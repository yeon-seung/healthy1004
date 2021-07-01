--	MEMBER	

--member table 삭제
drop table healthy_member;

--member table 생성
create table healthy_member (
	member_id varchar2(100) primary key,
	password varchar2(100) not null,
	member_name varchar2(100) not null,
	address varchar2(100) not null,
	email varchar2(100) not null,
	height varchar2(100) not null,
	weight varchar2(100) not null,
	age varchar2(100) not null,
	phone varchar2(100) not null,
	enabled int default 1 not null
)

insert into healthy_member values('java','a','박동은','송파','dongooree@naver.com','165','50','26','01011112222',1);

--member table 전체 검색 
select * from healthy_member;
commit


--	CREW

--crew table 삭제
drop table healthy_crew;

--crew table 생성
create table healthy_crew (
	crew_id varchar2(100) primary key,
	crew_name varchar2(100) not null,
	crew_info varchar2(500) not null,
	crew_size number not null,
	crew_location varchar2(100) not null
)

-- 크루 아이디 시퀀스로 주는 걸로 바꿀게~ diary랑 board도 시퀀스로 해줘 누군가가~
drop sequence crew_seq;
create sequence crew_seq;

-- 아이디 시퀀스로 바꾼 후 insert문
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_location) values(crew_seq.nextval, '송파 러닝 크루','애인괌','10','서울시 송파구 중대로12길 35');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_location) values(crew_seq.nextval, '송파 수영 크루','sexy 물개 모여라','10','서울시 송파구 신천동 32');

-- 아이디 시퀀스로 바꾸기 전 insert문
-- insert into healthy_crew values('a','la러닝크루','la에서 러닝하실 분들 구합니다','10','캘리포니아');

--crew table 전체 검색
select * from healthy_crew;
commit


--	CREW_MEMBER

--crew_member table 삭제
drop table healthy_crew_member;

--crew_member table 생성
create table healthy_crew_member (
	member_id varchar2(100) not null,
	crew_id varchar2(100) not null,
	join_date varchar2(100) not null,
	constraint fk_member_id foreign key(member_id) references healthy_member(member_id),
	constraint fk_crew_id foreign key(crew_id) references healthy_crew(crew_id),
	constraint pk_crew_member primary key(member_id, crew_id)
)

insert into healthy_crew_member values('java','a','2021-06-28');

--crew_member table 전체 검색
select * from healthy_crew_member;
commit


--	DIARY

--diary table 삭제
drop table healthy_diary;

--diary table 생성
create table healthy_diary (
	diary_id varchar2(100) primary key,
	member_id varchar2(100) not null,
	diary_date varchar2(100) not null,
	body_condition varchar2(100) not null,
	excercise_content varchar2(100) not null,
	constraint fk_diary_member_id foreign key(member_id) references healthy_member(member_id)
)

--다이어리 시퀀스 넣었어~~~
drop sequence diary_seq;
create sequence diary_seq;

--이건 seq로 id 넣은 후 insert문~~~
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,excercise_content) values(diary_seq.nextval,'java','2021-06-27','다리가 부음','러닝 100분');

--이건 seq로 id 넣기 전 insert문~~~
--insert into healthy_diary values('da','java','2021-06-27','다리가 부음','러닝 100분');

--diary table 전체 검색
select * from healthy_diary;
commit


--	CREW_BOARD

--crew_board table 삭제
drop table healthy_board;

--crew_board table 생성
create table healthy_board(
	board_id varchar2(100) primary key,
	member_id varchar2(100) not null,
	crew_id varchar2(100) not null,
	board_title varchar2(100) not null,
	board_content varchar2(100) not null,
	board_time varchar2(100) not null,
	constraint fk_board_member_id foreign key(member_id) references healthy_member(member_id),
	constraint fk_board_crew_id foreign key(crew_id) references healthy_crew(crew_id)
)

--다이어리 시퀀스 넣었어~~~
drop sequence board_seq;
create sequence board_seq;

--이건 seq로 id 넣은 후 insert문~~~
insert into healthy_board(board_id,member_id,crew_id,board_title,board_content,board_time) values(board_seq.nextval,'java',1,'7/1 la러닝 크루구합니다','7/1에 la에서 러닝하실 분 구합니다',sysdate);

--이건 seq로 id 넣기 전 insert문~~~
--insert into healthy_board values('ba','java','a','7/1 la러닝 크루구합니다','7/1에 la에서 러닝하실 분 구합니다','2021-06-30');

--crew_board table 전체 검색
select * from healthy_board;
commit


--	AUTHORITY

--authorities table 삭제
drop table authorities;

--authorities table 생성
create table authorities(
	username varchar2(100) not null,
	authority varchar2(30) not null,
	constraint fk_authorities foreign key(username) references healthy_member(member_id),
	constraint member_authorities primary key(username,authority)
)

--authorities table 전체 검색
select * from authorities;
commit




















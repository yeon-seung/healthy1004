--	MEMBER	

--member table 삭제
drop table healthy_member;

--member table 생성
create table healthy_member (
	member_id varchar2(100) primary key,
	password varchar2(100) not null,;
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
commit;


--	CREW

--crew table 삭제
drop table healthy_crew;

--crew table 생성
create table healthy_crew (
	crew_id varchar2(100) primary key,
	crew_name varchar2(100) not null,
	crew_info varchar2(100) not null,
	crew_size varchar2(100) not null,
	crew_location varchar2(100) not null
)

insert into healthy_crew values('a','la러닝크루','la에서 러닝하실 분들 구합니다','10','캘리포니아');

--crew table 전체 검색
select * from healthy_crew;
commit;


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
commit;


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

insert into healthy_diary values('da','java','2021-06-27','다리가 부음','러닝 100분');

--diary table 전체 검색
select * from healthy_diary;
commit;


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

insert into healthy_board values('ba','java','a','7/1 la러닝 크루구합니다','7/1에 la에서 러닝하실 분 구합니다','2021-06-30');

--crew_board table 전체 검색
select * from healthy_board;
commit;


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
commit;




















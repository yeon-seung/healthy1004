--   MEMBER

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



--   CREW

--crew table 삭제
drop table healthy_crew;

--crew table 생성
create table healthy_crew (
   crew_id number primary key,
   crew_name varchar2(100) not null,
   crew_info varchar2(500) not null,
   crew_size number not null,
   crew_member_count number default 0,
   crew_location varchar2(100) not null
)

-- crew에 이미지 파일첨부 관련 (crew 테이블 만들 때 이거도 반드시..!!!!!!!!!!!!)
alter table healthy_crew add crewImg varchar2(200);
alter table healthy_crew add crewThumbImg varchar2(200);


-- crew id 시퀀스
drop sequence crew_seq;
create sequence crew_seq;



--   CREW_MEMBER

--crew_member table 삭제
drop table healthy_crew_member;

--crew_member table 생성
create table healthy_crew_member (
   member_id varchar2(100) not null,
   crew_id number not null,
   join_date date not null,
   constraint fk_member_id foreign key(member_id) references healthy_member(member_id),
   constraint fk_crew_id foreign key(crew_id) references healthy_crew(crew_id) on delete cascade,
   constraint pk_crew_member primary key(member_id, crew_id)
)



--   DIARY

--diary table 삭제
drop table healthy_diary;

--diary table 생성
create table healthy_diary (
    diary_id varchar2(100) primary key,
	member_id varchar2(100) not null,
	diary_date varchar2(100) not null, 
	body_condition varchar2(100) not null,
	body_condition_detail varchar2(100) not null,
	excercise_content varchar2(100) default '운동안함',
	constraint fk_diary_member_id foreign key(member_id) references healthy_member(member_id)
)
	
--다이어리 시퀀스
drop sequence diary_seq;
create sequence diary_seq;



--   CREW_BOARD

--crew_board table 삭제
drop table healthy_board;

--crew_board table 생성
create table healthy_board(
   board_id number primary key,
   member_id varchar2(100) not null,
   crew_id number not null,
   board_title varchar2(100) not null,
   board_content varchar2(500) not null,
   board_time date not null,
   constraint fk_board_member_id foreign key(member_id) references healthy_member(member_id),
   constraint fk_board_crew_id foreign key(crew_id) references healthy_crew(crew_id) on delete cascade
)

-- board에 이미지 파일첨부 관련 (board 테이블 만들 때 이거도 반드시..!!!!!!!!!!!!)
alter table healthy_board add boardImg varchar2(200);
alter table healthy_board add boardThumbImg varchar2(200);

-- alter table healthy_board modify board_content varchar2(500);

--크루게시판 시퀀스
drop sequence board_seq;
create sequence board_seq;

-- COMMENT

-- 댓글테이블 삭제
drop table board_comment

-- 댓글테이블 생성
create table board_comment(
	comment_id number not null,
	comment_content varchar2(100) not null,
	member_id varchar2(100) not null,
	crew_id number not null,
	board_id number not null,
	reg_date date not null,
	constraint fk_comment_member_id foreign key(member_id) references healthy_member(member_id) on delete cascade,
	constraint fk_comment_crew_id foreign key(crew_id) references healthy_crew(crew_id) on delete cascade,
	constraint fk_comment_board_id foreign key(board_id) references healthy_board(board_id) on delete cascade
)

--댓글 테이블 시퀀스
drop sequence comment_seq;
create sequence comment_seq;


select * from BOARD_COMMENT;
-- 댓글이 있는 게시글 삭제 위해 on delete cascade 추가 ------------- 테이블 새로 만들기 귀찮은 갓기들을 위해 남겨둠
ALTER TABLE BOARD_COMMENT DROP CONSTRAINT fk_comment_member_id;
ALTER TABLE BOARD_COMMENT DROP CONSTRAINT fk_comment_crew_id;
ALTER TABLE BOARD_COMMENT DROP CONSTRAINT fk_comment_board_id;

ALTER TABLE BOARD_COMMENT
ADD CONSTRAINT fk_comment_member_id
FOREIGN KEY(member_id) REFERENCES healthy_member(member_id) ON DELETE CASCADE;
  
ALTER TABLE BOARD_COMMENT  
ADD CONSTRAINT fk_comment_crew_id
FOREIGN KEY(crew_id) REFERENCES healthy_crew(crew_id) ON DELETE CASCADE;

ALTER TABLE BOARD_COMMENT
ADD CONSTRAINT fk_comment_board_id
FOREIGN KEY(board_id) REFERENCES healthy_board(board_id) ON DELETE CASCADE;


--   AUTHORITY

--authorities table 삭제
drop table authorities;

--authorities table 생성
create table authorities(
   username varchar2(100) not null,
   authority varchar2(30) not null,
   constraint fk_authorities foreign key(username) references healthy_member(member_id),
   constraint member_authorities primary key(username,authority)
)
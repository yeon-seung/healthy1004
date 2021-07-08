--   MEMBER   

--member 데이터 전체 삭제
delete from healthy_member;

--member 탈퇴 enabled=0으로 만드는 test용 sql
update healthy_member
set enabled=1
where member_id='dong';

--member table 전체 검색 
select * from healthy_member;
commit


--   CREW

-- 아이디 시퀀스로 바꾼 후 insert문
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_location) values(crew_seq.nextval, '송파 러닝 크루','애인괌','10','서울시 송파구 중대로12길 35');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_location) values(crew_seq.nextval, '송파 수영 크루','sexy 물개 모여라','10','서울시 송파구 신천동 32');


--crew table 전체 검색
select * from healthy_crew;
commit


--   CREW_MEMBER


insert into healthy_crew_member values('java','a','2021-06-28');

--crew_member table 전체 검색
select * from healthy_crew_member;
commit


--   DIARY

--이건 seq로 id 넣은 후 insert문~~~
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,body_condition_detail,excercise_content) values(diary_seq.nextval,'java','2021-07-01','상','다리가 부음','러닝 100분');
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,body_condition_detail) values(diary_seq.nextval,'java','2021-07-27','하','다리가 부음');
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,body_condition_detail,excercise_content) values(diary_seq.nextval,'java','2021-07-17','중','다리가 부음','러닝 100분');
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,excercise_content) values(diary_seq.nextval,'java','2021-06-27','다리가 부음','러닝 100분');


--diary table 전체 검색
select * from healthy_diary;
commit


--   CREW_BOARD

--이건 seq로 id 넣은 후 insert문~~~
insert into healthy_board(board_id,member_id,crew_id,board_title,board_content,board_time) values(board_seq.nextval,'java',1,'7/1 la러닝 크루구합니다','7/1에 la에서 러닝하실 분 구합니다',sysdate);

--crew_board table 전체 검색
select * from healthy_board;
commit


--   AUTHORITY

--authority 데이터 전체 삭제
delete from authorities;

--authorities table 전체 검색
select * from authorities;
commit

--관리자 권한
update authorities set authority='ROLE_ADMIN' where username='admin';


-----------ex 코드

--아이디로 다이어리 내용 들고 오기
select Diary_date, body_condition, Excercise_Content from healthy_diary where member_id ='java';

select Diary_date, body_condition, Excercise_Content from healthy_diary;

select count(*) from healthy_diary;

update healthy_diary set
            diary_date = #{diaryDate},
            body_condition = #{bodyCondition},
            body_condition_detail = #{bodyConditionDetail},
            excercise_content = #{excerciseContent}
        where diary_id = #{diaryId} AND member_id = #{memberId};

 update healthy_diary set
            diary_date = '2021-07-02',
            body_condition = '하',
            body_condition_detail = '팔아픔',
            excercise_content = '수영20분'
        where diary_id = '15' AND member_id = 'java';
       










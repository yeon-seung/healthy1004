--   MEMBER   

--member 데이터 전체 삭제
delete from healthy_member;

-- 수정중~
update healthy_crew set crew_name = ''
where crew_id = '';
select * from healthy_crew;

--member 탈퇴 enabled=0으로 만드는 test용 sql
update healthy_member
set enabled=1
where member_id='aaaa';

--member table 전체 검색
select * from healthy_member;
commit

-- CREW & CREW_MEMBER
insert into healthy_crew_member values('java','a','2021-06-28');

--crew_member table 전체 검색
select * from healthy_crew_member;
commit

-- 아이디 시퀀스로 바꾼 후 insert문
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_member_count, crew_location) values(crew_seq.nextval, '동구리의 링피트 크루','게임하면서 운동해요', 10, 5, '서울시 송파구 중대로12길 35');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_member_count, crew_location) values(crew_seq.nextval, '송파 수영 모임','healthy 물개 모여라!', 10, 8, '서울시 송파구 신천동 32');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_member_count, crew_location) values(crew_seq.nextval, '주짓수 크루','주짓수 국대 되고 싶은 사람 모여라','5','서울시 송파구 양재대로 1218');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_member_count, crew_location) values(crew_seq.nextval, '오리역 복싱 크루 ROCKY','록키 보고 오세요', 6, 6, '성남시 분당구 성남대로 34');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_member_count, crew_location) values(crew_seq.nextval, '강남 수영 크루','20세 이상만 받아요^^','2','서울특별시 강남구 수서동 광평로51길 6-5');
insert into healthy_crew(crew_id, crew_name, crew_info, crew_size, crew_member_count, crew_location) values(crew_seq.nextval, '정자 필라테스 크루','체지방률 20% 미만에 함께 도전하실 분^^', 5, 3, '경기 성남시 분당구 정자동 88');

--crew table 전체 검색
select * from healthy_crew;
select * from healthy_crew_member;
delete from healthy_crew_member where member_id = 'mk2eeeeee' and crew_id = '15'

-- id로 crew member 수 조회
select count(*) from healthy_crew_member
where crew_id = '28'

update healthy_crew set crew_member_count = crew_member_count + 1
where crew_id = 1

update healthy_crew set crew_member_count = crew_member_count + 1
where crew_id = 1

select crew_size from healthy_crew where crew_id = 28;

delete from healthy_crew;
commit

--크루 삭제하기
delete from healthy_crew where crew_id='4';

--크루 가입
insert into healthy_crew_member values('java','5',sysdate);

select * from healthy_crew

select count(*) from healthy_crew_member
where member_id='javaaa' and crew_id='1';

--crew_member table 전체 검색
select * from healthy_crew_member;
commit

-- crew_member table 전체 삭제
drop table healthy_crew_member;
delete from healthy_crew_member;

--가입 안한 크루 리스트 뽑아내는거
select *
from healthy_crew
where crew_id not in(
   select crew_id
   from healthy_crew_member
   where member_id='jiye'
)

----가입한 크루 뽑아내기
select crew.*
from healthy_crew crew, healthy_crew_member crew_mem
where crew.crew_id=crew_mem.crew_id and crew_mem.member_id='jiye'
order by crew_mem.join_date

-----검색 후 리스트 출력
select *
from healthy_crew
where crew_id not in(
   select crew_id
   from healthy_crew_member
   where member_id='jiye'
)and crew_location like '%안산%'



--   DIARY

--이건 seq로 id 넣은 후 insert문~~~
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,body_condition_detail,excercise_content) values(diary_seq.nextval,'spring','2021-07-01','상','다리가 부음','러닝 100분');
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,body_condition_detail) values(diary_seq.nextval,'spring','2021-07-27','하','다리가 부음');
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,body_condition_detail,excercise_content) values(diary_seq.nextval,'java','2021-07-17','중','다리가 부음','러닝 100분');
insert into healthy_diary(diary_id,member_id,diary_date,body_condition,excercise_content) values(diary_seq.nextval,'spring','2021-06-27','다리가 부음','러닝 100분');


--diary table 전체 검색
select * from healthy_diary;
commit


--   CREW_BOARD

--이건 seq로 id 넣은 후 insert문~~~
insert into healthy_board(board_id,member_id,crew_id,board_title,board_content,board_time) values(board_seq.nextval,'java',1,'7/1 la러닝 크루구합니다','7/1에 la에서 러닝하실 분 구합니다',sysdate);
		
--crew_board table 전체 검색
select * from healthy_board;
commit

-- COMMENT
--댓글 갯수
select count(*) from board_comment
--댓글 리스트
select * 
from board_comment
where board_id='2'
--댓글 삽입
insert into board_comment(comment_id,comment_content,member_id,crew_id,board_id,reg_date) values(comment_seq.nextval,'힘드롱ㅜ','jiye',21,2,sysdate);
insert into board_comment(comment_id,comment_content,member_id,crew_id,board_id,reg_date) values(comment_seq.nextval,'뭬렁','jiye',21,2,sysdate);
--댓글 수정
update board_comment
set comment_content = '다리아팡'
where comment_id = '1'
--댓글 삭제
delete from board_comment where comment_id='2'

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
       










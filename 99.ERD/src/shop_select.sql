/*
 * 1. 멤버 한사람의 특정날짜의 주문전체목록
 * 2. 멤버 한사람의 특정날짜의 주문한개
 * 3. 주문한개의  멤버의 정보
 * 4. 주문한개의  제품여러개 정보들(주문상세, 제품)
 * 5. 주문한개의 주문자정보 & 제품여러개 정보들(주문상세)
 */

--1. 멤버 한사람의 특정날짜의 주문전체 목록
select j.* from user1 u join jumun1 j
on u.user_id = j.user_id and u.user_id = 'guard1' and to_char(j.jumun_date, 'YYYY/MM/DD')='2020/09/02';

---2. 멤버 한사람의 특정날짜의 주문한개
select j.* from
user1 u join jumun1 j
on u.user_id = j.user_id and u.user_id='guard1' and to_char(j.jumun_date, 'YYYY/MM/DD')='2020/09/02'
where j.jumun_no=3001;

--4. 주문한개의 제품여러개 정보들(주문상세, 제품)
select p.* from product1 p
join jumun_detail1 jd on jd.product_no = p.product_no
join jumun1 j on j.jumun_no = jd.jumun_no
where j.jumun_no = 3001;

/**************************관리자*****************************/
--1. 모든 멤버의 특정날짜의 주문전체목록
select j.* from user1 u join jumun1 j
on u.user_id = j.user_id and to_char(j.jumun_date, 'YYYY/MM/DD')='2020/09/02';

--3. 주문한개의 멤버의 정보
select u.* from jumun1 j join user1 u
on j.user_id=u.user_id where j.jumun_no = 3001;

--5 주문한개의 주문자정보 & 제품여러개 정보들(주문상세)
select j.jumun_no,u.*,p.* from user1 u
join jumun1 j on j.user_id=u.user_id
join jumun_detail1 jd on j.jumun_no=jd.jumun_no
join product1 p on p.product_no=jd.product_no
where j.jumun_no=3002;

/**************************************************************/








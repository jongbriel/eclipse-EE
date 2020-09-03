/*
 * 1. 멤버 한사람의 카트정보(카트아이템리스트)
 * 2. 카트아이템 1개의 제품정보
 * 3. 멤버 한사람의 카트정보 출력(제품정보)		
 */

--1. 멤버한사람의 카트아이템리스트
/*
select c.* from cart1 c join user1 u on u.user_id=c.user_id
join product1 p on c.product_no = p.product_no
where u.user_id='guard1';
*/
select * from cart1 c where c.user_id='guard1';
select * from cart1 c where c.user_id='guard2';
select * from cart1 c where c.user_id='guard3';

--2. 카트아이템 1개의 제품정보
select * from cart1 c join product1 p on c.product_no=p.product_no where c.cart_item_no=2001;

--3. 멤버 한사람의 카트정보 출력(제품정보)
select p.product_name 제품이름, c.cart_item_qty 수량, p.product_price*c.cart_item_qty 총가격 from cart1 c 
join product1 p on c.product_no=p.product_no where c.user_id='guard1';

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
/*
select p.* from product1 p
join jumun_detail1 jd on jd.product_no = p.product_no
join jumun1 j on j.jumun_no = jd.jumun_no
where j.jumun_no = 3001;
*/
select jd.*,p.* from jumun1 j
join jumun_detail1 jd 
on j.jumun_no=jd.jumun_no 
join product1 p
on jd.product_no=p.product_no
where j.user_id='guard1' and j.jumun_no=3001;

/**************************관리자*****************************/
--1. 모든 멤버의 특정날짜의 주문전체목록
select j.* from user1 u join jumun1 j
on u.user_id = j.user_id and to_char(j.jumun_date, 'YYYY/MM/DD')='2020/09/02';

--3-1. 주문한건의 멤버의 정보
select * from user1 u
join jumun1 j
on u.user_id=j.user_id where j.jumun_no=3003;

--3-2. 특정멤버의 정보를 주문정보를 포함해서 출력
--기본적으로 조인은 이너조인이다. 이렇게 하면 주문안한 멤버는 멤버정보도 안뜬다.
select * from user1 u
inner join jumun1 j
on u.user_id=j.user_id where u.user_id='guard4';

--3-2. 특정멤버의 정보를 주문정보를 포함해서 출력
--주문이 없어도 특정멤버 정보는 출력하게끔 레프트아우터 조인 해야함
select * from user1 u
left outer join jumun1 j
on u.user_id=j.user_id where u.user_id='guard4';

--5 주문한개의 주문자정보 & 제품여러개 정보들(주문상세)
/*
select j.jumun_no,u.*,p.* from user1 u
join jumun1 j on j.user_id=u.user_id
join jumun_detail1 jd on j.jumun_no=jd.jumun_no
join product1 p on p.product_no=jd.product_no
where j.jumun_no=3002;
*/
select * from user1 u 
join jumun1 j on u.user_id=j.user_id
join jumun_detail1 jd on j.jumun_no=jd.jumun_no
join product1 p on jd.product_no=p.product_no
where j.jumun_no=3001;

/**************************************************************/








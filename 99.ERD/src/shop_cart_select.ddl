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


/*
 * 1. ��� �ѻ���� īƮ����(īƮ�����۸���Ʈ)
 * 2. īƮ������ 1���� ��ǰ����
 * 3. ��� �ѻ���� īƮ���� ���(��ǰ����)		
 */

--1. ����ѻ���� īƮ�����۸���Ʈ
/*
select c.* from cart1 c join user1 u on u.user_id=c.user_id
join product1 p on c.product_no = p.product_no
where u.user_id='guard1';
*/
select * from cart1 c where c.user_id='guard1';
select * from cart1 c where c.user_id='guard2';
select * from cart1 c where c.user_id='guard3';

--2. īƮ������ 1���� ��ǰ����
select * from cart1 c join product1 p on c.product_no=p.product_no where c.cart_item_no=2001;

--3. ��� �ѻ���� īƮ���� ���(��ǰ����)
select p.product_name ��ǰ�̸�, c.cart_item_qty ����, p.product_price*c.cart_item_qty �Ѱ��� from cart1 c 
join product1 p on c.product_no=p.product_no where c.user_id='guard1';


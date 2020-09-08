--guard1 카트에 제품존재여부
select count(*) as p_count 
from cart2 c join user2 u on c.userid = u.userid 
join product2 p on c.p_no=p.p_no 
where u.userid='guard1' and c.p_no=1;

--guard1 카트아이템리스트
select c.cart_itemno, c.p_no,c.cart_qty,c.cart_tot_price ,p.p_name,p.p_image,p.p_price 
		from cart2 c join user2 u 
		on c.userid = u.userid join product2 p on c.p_no=p.p_no where u.userid='guard1';

-- guard1 주문리스트		
-- guard1 주문한개상세			
		
--guard1 카트에 있는 제품 수량증가
update cart2 set cart_qty=cart_qty + 1 
		where userid='guard1' and p_no=1;	
	
--guard1님 카트아이템1개삭제
delete from cart2 where cart_itemno = 3;

--guard1님 카트아이템모두삭제
delete from cart2 c where c.userid='guard1';

		
/**********************user1 insert************************/
/*
 * INSERT INTO user1 (userId, password, name, email, phone) VALUES (userId, password, name, email, phone);
 */

insert into user1 (userId, password, name, email, phone) Values ('jong1', '1111', '정종헌', 'jong1@naver.com', '010-1111-1111');
insert into user1 (userId, password, name, email, phone) Values ('jong2', '2222', '정종투', 'jong2@naver.com', '010-2222-2222');
insert into user1 (userId, password, name, email, phone) Values ('jong3', '3333', '정종삼', 'jong3@naver.com', '010-3333-3333');
insert into user1 (userId, password, name, email, phone) Values ('jong4', '4444', '정종사', 'jong4@naver.com', '010-4444-4444');

/**********************product insert************************/
/*
INSERT INTO product (p_no, p_name, p_style, p_gendor, p_price, p_image, p_desc, p_color, p_date) 
VALUES (p_no, p_name, p_style, p_gendor, p_price, p_image, p_desc, p_color, p_date);
*/
INSERT INTO product (p_no, p_name, p_style, p_gendor, p_price, p_image, p_desc, p_color, p_date) 
VALUES (f_c1_black, '베이클로그 우먼', p_style, p_gendor, p_price, p_image, p_desc, p_color, p_date);





/**********************cart insert************************/
/*
INSERT INTO cart (cart_itemno, cart_qty2, cart_tot_price, userId, p_no) 
VALUES (cart_itemno, cart_qty2, cart_tot_price, userId, p_no);
*/


/**********************jumun insert************************/
/*
INSERT INTO jumun (j_no, j_desc, j_date, j_price, userId) 
VALUES (j_no, j_desc, j_date, j_price, userId);
*/


/*
INSERT INTO jumun_detail (jd_no, jd_qty, jd_pname, jd_tot_price, j_no, p_no) 
VALUES (jd_no, jd_qty, jd_pname, jd_tot_price, j_no, p_no);

INSERT INTO jumun_detail (jd_no, jd_qty, jd_pname, jd_tot_price, j_no, p_no) 
VALUES (jd_no, jd_qty, jd_pname, jd_tot_price, j_no, p_no);
*/




INSERT INTO user1 (user_id, user_password, user_name, user_email) VALUES ('guard1', '1111', 'FIRST', 'guard1@gmail.com');
INSERT INTO user1 (user_id, user_password, user_name, user_email) VALUES ('guard2', '2222', 'SECOND', 'guard2@gmail.com');
INSERT INTO user1 (user_id, user_password, user_name, user_email) VALUES ('guard3', '3333', 'THIRD', 'guard3@gmail.com');
INSERT INTO user1 (user_id, user_password, user_name, user_email) VALUES ('guard4', '4444', 'FOURTH', 'guard4@gmail.com');

INSERT INTO product1 (product_no, product_name, product_price, product_image, product_desc, product_click_count) 
VALUES (1001, '아이폰', 54400, 'iphone.jpg', '아이폰 쪼아', 0);
INSERT INTO product1 (product_no, product_name, product_price, product_image, product_desc, product_click_count) 
VALUES (1002, '아이패드', 89700, 'ipad.jpg', '아이패드 쪼아', 0);
INSERT INTO product1 (product_no, product_name, product_price, product_image, product_desc, product_click_count) 
VALUES (1003, '갤럭시20', 42300, 'galaxy20.jpg', '갤럭시 쪼아', 0);
INSERT INTO product1 (product_no, product_name, product_price, product_image, product_desc, product_click_count) 
VALUES (1004, '갤럭시탭', 73900, 'galaxytap.jpg', '갤럭시탭 쪼아', 0);
INSERT INTO product1 (product_no, product_name, product_price, product_image, product_desc, product_click_count) 
VALUES (1005, '테슬라', 992400, 'teslar.jpg', '테슬라 쪼아', 0);
INSERT INTO product1 (product_no, product_name, product_price, product_image, product_desc, product_click_count) 
VALUES (1006, '블랙베리', 39400, 'berry.jpg', '블랙베리 쪼아', 0);


/*
 * 회원아이디 guard1이 로그인한 후 제품들을 주문 1
 * 아이폰2, 아이패드2, 갤럭시20 1개
 */
INSERT INTO jumun1 (jumun_no, jumun_desc, jumun_date, jumun_price, user_id) 
VALUES (3001, '아이폰외 2종', sysdate, 232580, 'guard1');

INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5001, 3001, 1001, 2);
INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5002, 3001, 1002, 2);
INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5003, 3001, 1003, 1);

/*
 * 회원아이디 guard2이 로그인한 후 제품들을 주문 2
 * 아이폰2, 아이패드2, 갤럭시20 1개
 */
INSERT INTO jumun1 (jumun_no, jumun_desc, jumun_date, jumun_price, user_id) 
VALUES (3002, '테슬라외 1종', sysdate, 1031800, 'guard2');

INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5004, 3002, 1005, 1);
INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5005, 3002, 1006, 1);

/*
 * 회원아이디 guard3이 로그인한 후 제품들을 주문 3
 * 갤럭시탭 1개
 */
INSERT INTO jumun1 (jumun_no, jumun_desc, jumun_date, jumun_price, user_id) 
VALUES (3003, '갤럭시탭', sysdate, 73900, 'guard3');

INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5006, 3003, 1004, 1);

/*
 * 회원아이디 guard1이 2번째 주문 4
 * 테슬라1개, 블랙베리1개
 */
INSERT INTO jumun1 (jumun_no, jumun_desc, jumun_date, jumun_price, user_id) 
VALUES (3004, '테슬라외 1종', sysdate, 1031800, 'guard1');

INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5007, 3004, 1005, 1);
INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no, jumun_detail_count) 
VALUES (5008, 3004, 1006, 1);



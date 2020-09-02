DROP TABLE cart1 CASCADE CONSTRAINTS;
DROP TABLE jumun_detail1 CASCADE CONSTRAINTS;
DROP TABLE jumun1 CASCADE CONSTRAINTS;
DROP TABLE product1 CASCADE CONSTRAINTS;
DROP TABLE user1 CASCADE CONSTRAINTS;

CREATE TABLE user1(
		user_id                       		VARCHAR2(50)		 NULL ,
		user_password                 		VARCHAR2(50)		 NULL ,
		user_name                     		VARCHAR2(50)		 NULL ,
		user_email                    		VARCHAR2(50)		 NULL 
);


CREATE TABLE product1(
		product_no                    		NUMBER(10)		 NULL ,
		product_name                  		VARCHAR2(100)		 NULL ,
		product_price                 		NUMBER(10)		 DEFAULT 0		 NULL ,
		product_image                 		VARCHAR2(50)		 NULL ,
		product_desc                  		VARCHAR2(1024)		 NULL ,
		product_click_count           		NUMBER(10)		 DEFAULT 0		 NULL 
);


CREATE TABLE jumun1(
		jumun_no                      		NUMBER(10)		 NULL ,
		jumun_desc                    		VARCHAR2(50)		 NULL ,
		jumun_date                    		DATE		 DEFAULT sysdate		 NULL ,
		jumun_price                   		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(50)		 NULL 
);


CREATE TABLE jumun_detail1(
		jumun_detail_no               		NUMBER(10)		 NULL ,
		jumun_no                      		NUMBER(10)		 NULL ,
		product_no                    		NUMBER(10)		 NULL ,
		jumun_detail_count            		NUMBER(10)		 NULL 
);


CREATE TABLE cart1(
		cart_item_no                  		NUMBER(10)		 NULL ,
		cart_item_qty                 		NUMBER(10)		 NULL ,
		cart_item_tot_price           		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(50)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);



ALTER TABLE user1 ADD CONSTRAINT IDX_user1_PK PRIMARY KEY (user_id);

ALTER TABLE product1 ADD CONSTRAINT IDX_product1_PK PRIMARY KEY (product_no);

ALTER TABLE jumun1 ADD CONSTRAINT IDX_jumun1_PK PRIMARY KEY (jumun_no);
ALTER TABLE jumun1 ADD CONSTRAINT IDX_jumun1_FK0 FOREIGN KEY (user_id) REFERENCES user1 (user_id);

ALTER TABLE jumun_detail1 ADD CONSTRAINT IDX_jumun_detail1_PK PRIMARY KEY (jumun_detail_no);
ALTER TABLE jumun_detail1 ADD CONSTRAINT IDX_jumun_detail1_FK0 FOREIGN KEY (jumun_no) REFERENCES jumun1 (jumun_no);
ALTER TABLE jumun_detail1 ADD CONSTRAINT IDX_jumun_detail1_FK1 FOREIGN KEY (product_no) REFERENCES product1 (product_no);

ALTER TABLE cart1 ADD CONSTRAINT IDX_cart1_PK PRIMARY KEY (cart_item_no);
ALTER TABLE cart1 ADD CONSTRAINT IDX_cart1_FK0 FOREIGN KEY (user_id) REFERENCES user1 (user_id);
ALTER TABLE cart1 ADD CONSTRAINT IDX_cart1_FK1 FOREIGN KEY (product_no) REFERENCES product1 (product_no);


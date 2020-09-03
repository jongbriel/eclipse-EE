DROP TABLE cart2 CASCADE CONSTRAINTS;
DROP TABLE user2 CASCADE CONSTRAINTS;
DROP TABLE product2 CASCADE CONSTRAINTS;

CREATE TABLE product2(
		p_no                          		NUMBER(10)		 NULL ,
		p_name                        		VARCHAR2(50)		 NOT NULL,
		p_price                       		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		p_image                       		VARCHAR2(100)		 DEFAULT 'images/no_image.jpg'		 NOT NULL,
		p_desc                        		VARCHAR2(200)		 NULL ,
		p_click_count                 		VARCHAR2(10)		 DEFAULT 0		 NOT NULL
);

DROP SEQUENCE product2_p_no_SEQ;

CREATE SEQUENCE product2_p_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;
/*
CREATE TRIGGER product2_p_no_TRG
BEFORE INSERT ON product2
FOR EACH ROW
BEGIN
IF :NEW.p_no IS NOT NULL THEN
  SELECT product2_p_no_SEQ.NEXTVAL INTO :NEW.p_no FROM DUAL;
END IF;
END;
*/

CREATE TABLE user2(
		userId                        		VARCHAR2(100)		 NULL ,
		password                      		VARCHAR2(100)		 NULL ,
		name                          		VARCHAR2(100)		 NULL ,
		email                         		VARCHAR2(100)		 NULL 
);


CREATE TABLE cart2(
		cart_itemno                   		NUMBER(10)		 NULL ,
		userId                        		VARCHAR2(100)		 NULL ,
		p_no                          		NUMBER(10)		 NULL ,
		cart_qty                      		NUMBER(10)		 DEFAULT 0		 NOT NULL,
		cart_tot_price                		NUMBER(10)		 DEFAULT 0		 NOT NULL
);

DROP SEQUENCE cart2_cart_itemno_SEQ;

CREATE SEQUENCE cart2_cart_itemno_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;
/*
CREATE TRIGGER cart2_cart_itemno_TRG
BEFORE INSERT ON cart2
FOR EACH ROW
BEGIN
IF :NEW.cart_itemno IS NOT NULL THEN
  SELECT cart2_cart_itemno_SEQ.NEXTVAL INTO :NEW.cart_itemno FROM DUAL;
END IF;
END;
*/


ALTER TABLE product2 ADD CONSTRAINT IDX_product2_PK PRIMARY KEY (p_no);

ALTER TABLE user2 ADD CONSTRAINT IDX_user2_PK PRIMARY KEY (userId);

ALTER TABLE cart2 ADD CONSTRAINT IDX_cart2_PK PRIMARY KEY (cart_itemno);
ALTER TABLE cart2 ADD CONSTRAINT IDX_cart2_FK0 FOREIGN KEY (p_no) REFERENCES product2 (p_no);
ALTER TABLE cart2 ADD CONSTRAINT IDX_cart2_FK1 FOREIGN KEY (userId) REFERENCES user2 (userId);


INSERT INTO member (m_id, m_name, m_address, m_point, m_gender, m_date) VALUES 
                   ('guard1', '김경호1', '경기도', 0, 'M', sysdate);
INSERT INTO member (m_id, m_name, m_address) VALUES 
                   ('guard2', '김경호2', '경기도2');                   
INSERT INTO member (m_id, m_name, m_address) VALUES 
                   ('guard3', '김경호3', '경기도3');                   
INSERT INTO member (m_id, m_name, m_address) VALUES 
                   ('guard4', '김경호4', '경기도4');                   
INSERT INTO member (m_id, m_name, m_address) VALUES 
                   ('guard5', '김경호5', '경기도5');
                   
INSERT INTO board (b_no, b_title, b_content, b_date, b_readcount, m_id) VALUES
				  (1000, '타이틀1', '내용1', sysdate, 0, 'guard1');
INSERT INTO board (b_no, b_title, b_content, m_id) VALUES
				  (2000, '타이틀2', '내용2', 'guard1');
INSERT INTO board (b_no, b_title, b_content, m_id) VALUES
				  (3000, '타이틀3', '내용3', 'guard1');
				  
INSERT INTO board (b_no, b_title, b_content, m_id) VALUES
				  (4000, '타이틀4', '내용4', 'guard2');
INSERT INTO board (b_no, b_title, b_content, m_id) VALUES
				  (5000, '타이틀5', '내용5', 'guard2');
				  
INSERT INTO board (b_no, b_title, b_content, m_id) VALUES
				  (6000, '타이틀6', '내용6', 'guard3');
				  
commit;	  
				  

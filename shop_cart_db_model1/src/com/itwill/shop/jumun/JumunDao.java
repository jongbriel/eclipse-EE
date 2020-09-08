package com.itwill.shop.jumun;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JumunDao {
	private DataSource dataSource;
	public JumunDao() throws Exception{
		InitialContext ic=new InitialContext();
		dataSource=(DataSource)ic.lookup("java:/comp/env/jdbc/OracleDB");
	}
	/*
	 * 주문생성
	 */
	public int create(String j_desc, int j_price, String j_userId) throws Exception{
		/*
		 	INSERT INTO jumun1 (jumun_no, jumun_desc, jumun_date, jumun_price, user_id) 
			VALUES (3001, '아이폰외 4종', sysdate , 345100, 'guard1');
			
			INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no,jumun_detail_count) 
			VALUES (5001, 3001, 1001,2);
			INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no,jumun_detail_count) 
			VALUES (5002, 3001, 1002,2);
			INSERT INTO jumun_detail1 (jumun_detail_no, jumun_no, product_no,jumun_detail_count) 
			VALUES (5003, 3001, 1003,1);
		 */
		Connection con=null;
		PreparedStatement pstmt=null;
		String insertQuery="INSERT INTO jumun2 (j_no, j_desc, j_date, j_price, userId) VALUES (jumun2_j_no_SEQ.nextval, ?, sysdate, ?, ?)";
		/*
		INSERT INTO jumun2 (j_no, j_desc, j_date, j_price, userId) 
		VALUES (jumun2_j_no_SEQ.nextval, '하이용', sysdate, 9000, 'guard1');
		
		INSERT INTO jumun_detail2 (jd_no, jd_qty, jd_pname, jd_tot_price, j_no, p_no) 
		VALUES (jumun_detail2_jd_no_SEQ.nextval, 2, '퍼그', '800000', 2, 3);
		 */
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(insertQuery);
			pstmt.setString(1, j_desc);
			pstmt.setInt(2, j_price);
			pstmt.setString(3, j_userId);
			int row=pstmt.executeUpdate();
			return row;
		} finally {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		}
	}
	/*
	 * 주문리스트
	 */
	public ArrayList<Jumun> list() {
		
		return null;
	}
	/*
	 * 주문한개보기
	 */
	public Jumun detail() {
		
		return null;
	}
	/*
	 * 주문삭제
	 */
	public void delete() {
		
	}
	
	
	
	
	
	
	
	
	
}

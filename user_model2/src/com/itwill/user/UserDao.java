package com.itwill.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;

public class UserDao {
	
	private DataSource dataSource;
	
	public UserDao() throws Exception {
		Properties properties = new Properties();
		properties.load(this.getClass().getResourceAsStream("db.properties"));
		
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(properties.getProperty("driverClass"));
		basicDataSource.setDriverClassName(properties.getProperty("url"));
		basicDataSource.setDriverClassName(properties.getProperty("user"));
		basicDataSource.setDriverClassName(properties.getProperty("password"));
		dataSource = basicDataSource;
	}
	
	public int create(User user) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		int insertRowCount = 0;
		
		try {
			con=dataSource.getConnection();
			pstmt=con.prepareStatement(UserSQL.USER_INSERT);
			pstmt.setString(1, user.getUserId());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getEmail());
			insertRowCount=pstmt.executeUpdate();
		}finally {
			if (pstmt!=null) {
				pstmt.close();
			}
			if (con!=null) {
				con.close();
			}
		}	
		return insertRowCount;
	}
	
	public int update(User user) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		int updateRowCount = 0;
		
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(UserSQL.USER_UPDATE);
			pstmt.setString(1, user.getPassword());
			pstmt.setString(2, user.getName());
			pstmt.setString(3, user.getEmail());
			pstmt.setString(4, user.getUserId());
			updateRowCount=pstmt.executeUpdate();
		} finally {
			if (pstmt!=null) {
				pstmt.close();
			}
			if (con!=null) {
				con.close();
			}
		}
		return updateRowCount;
	}
	
	public int remove(String userId) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		int removeRowCount = 0;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(UserSQL.USER_DELETE);
			pstmt.setString(1, userId);
			removeRowCount = pstmt.executeUpdate();
		}finally {
			if (pstmt!=null) {
				pstmt.close();
			}
			if (con!=null) {
				con.close();
			}
		}
		return removeRowCount;
	}
	
	public User findUser(String userId) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		User user = null;
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(UserSQL.USER_SELECT_BY_ID);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				user = new User(rs.getString("userId"), rs.getString("password"),rs.getString("name"),rs.getString("email"));
			}
		}finally {
			if (rs!=null) rs.close();
			if (pstmt!=null) pstmt.close();
			if (con!=null) con.close();
		}
		return user;
	}
	
	public ArrayList<User> findUserList() throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<User> findUserList = new ArrayList<User>();
		try {
			con = dataSource.getConnection();
			pstmt = con.prepareStatement(UserSQL.USER_SELECT_ALL);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				findUserList.add(new User(rs.getString("userId"), rs.getString("password"),rs.getString("name"),rs.getString("email")));
			}
		} finally {
			if (rs!=null) rs.close();
			if (pstmt!=null) pstmt.close();
			if (con!=null) con.close();
		}
		return findUserList;
	}
	
	public boolean existedUser(String userId) throws Exception{
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		boolean isExist = false;
		
		
		
		
		
		
		
		return isExist;
		
	}
	
	

}

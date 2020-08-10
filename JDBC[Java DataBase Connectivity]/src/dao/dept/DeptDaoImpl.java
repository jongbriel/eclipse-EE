package dao.dept;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import dao.address.Address;
import dao.address.AddressSQL;
import dao.common.ConnectionFactory;

public class DeptDaoImpl implements DeptDao{

	@Override
	public int insert(Dept department) throws Exception {
		Connection con=ConnectionFactory.getConnection();
		PreparedStatement pstmt = con.prepareStatement(DeptSQL.INSERT);
		pstmt.setInt(1, department.getDeptno());
		pstmt.setString(2, department.getDname());
		pstmt.setString(3, department.getLoc());
		int insertRowCount=pstmt.executeUpdate();
		pstmt.close();
		ConnectionFactory.releaseConnection(con);
		
		return insertRowCount;
		
	}
	
	@Override
	public int delete(int deptNo) throws Exception{
		Connection con = ConnectionFactory.getConnection();
		PreparedStatement pstmt = con.prepareStatement(DeptSQL.DELETE);
		pstmt.setInt(1, deptNo);
		int deleteRowCount = pstmt.executeUpdate();
		pstmt.close();
		ConnectionFactory.releaseConnection(con);
		return deleteRowCount;
	}
	
	@Override
	public int update(Dept updateDept) throws Exception {
		Connection con=ConnectionFactory.getConnection();
		PreparedStatement pstmt=con.prepareStatement(DeptSQL.UPDATE);
		pstmt.setInt(1, updateDept.getDeptno());
		pstmt.setString(2, updateDept.getDname());
		pstmt.setString(3, updateDept.getLoc());
		pstmt.setInt(4, updateDept.getDeptno());
		int updateRowCount=pstmt.executeUpdate();
		pstmt.close();
		ConnectionFactory.releaseConnection(con);
		
		return updateRowCount;
				
	}
		
	@Override
	public Dept selectByNo(int deptno) throws Exception {
		Dept findDept=null;
		Connection con=ConnectionFactory.getConnection();
		PreparedStatement pstmt=con.prepareStatement(DeptSQL.SELECTBYNO);
		pstmt.setInt(1,deptno);
		ResultSet rs=pstmt.executeQuery();
		if(rs.next()) {
			findDept=new Dept(rs.getInt("deptno"),
							  rs.getString("dname"),
							  rs.getString("loc"));
		}
		rs.close();
		pstmt.close();
		ConnectionFactory.releaseConnection(con);
		return findDept;
	}

	@Override
	public ArrayList selectByAll() throws Exception {
		ArrayList<Dept> findDept=new ArrayList<Dept>();
		Connection con=ConnectionFactory.getConnection();
		PreparedStatement pstmt=con.prepareStatement(DeptSQL.SELECTALL);
		ResultSet rs=pstmt.executeQuery();
		while(rs.next()) {
			findDept.add(new Dept(rs.getInt("deptno"),
									rs.getString("dname"), 
									rs.getString("loc")));
		}
		rs.close();
		pstmt.close();
		ConnectionFactory.releaseConnection(con);
		return findDept;
		
	}

}

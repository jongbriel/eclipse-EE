package dao.dept;

public class DeptSQL {
	public static final String INSERT="insert into dept values(?,?,?)";
	public static final String DELETE = "delete dept where deptno =?";
	public static final String UPDATE=
			"update dept set deptno=?,dname=?,loc=? where deptno=?";
	public static final String SELECTBYNO="select * from dept where deptno=?";
	public static final String SELECTALL="select * from dept";
	
}

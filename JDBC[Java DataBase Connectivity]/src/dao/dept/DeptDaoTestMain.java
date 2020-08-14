package dao.dept;

public class DeptDaoTestMain {

	public static void main(String[] args) throws Exception {
		DeptDao deptDao=new DeptDaoImpl();
		
		Dept dept1 = new Dept(5, "xx", "xxx");
		Dept dept2 = new Dept(2, "yy", "yyy");
		
		Dept updateDept = new Dept(2, "zz", "zzz");
		
		
		int rowCount = deptDao.insert(dept1);
		//System.out.println(rowCount);
		//int rowCount = deptDao.insert(dept2);
		//System.out.println(rowCount);
		
		//deptDao.delete(50);
		//deptDao.update(updateDept);
		deptDao.selectByNo(1);
		deptDao.selectByAll();
		
		
		
		
	}

}

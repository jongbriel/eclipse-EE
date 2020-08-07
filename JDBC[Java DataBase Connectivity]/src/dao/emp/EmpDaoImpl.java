package dao.emp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;



public class EmpDaoImpl implements EmpDao {

	@Override
	public int insert(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Emp emp) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int empno) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Emp findByEmpno(int empno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public List<Emp> findByDeptno(int deptno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	// 사원정보(부서정보포함) 한개 반환
	@Override
	public HashMap findEmpnoWithDept(int no) throws Exception {
		return null;
	}
	//사원정보(부서정보포함) 전체목록 반환
	@Override
	public ArrayList<HashMap> findEmpsWithDept() throws Exception {
		
		return null;
	}

	

}

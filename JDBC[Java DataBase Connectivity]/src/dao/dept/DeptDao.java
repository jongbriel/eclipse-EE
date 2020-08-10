package dao.dept;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import dao.address.Address;

/**
 * 
 * dept 테이블과 관련된 비즈니스 규약 메소드 선언
 *
 * @author  
 */
public interface DeptDao {
	// 부서 등록
	public int insert(Dept deparment) throws Exception;
	//부서 번호로 삭제
	public int delete(int deptNo) throws Exception;
	//부서 업데이트
	public int update(Dept updateDept)  throws Exception;
	// 부서번호로 부서정보 반환
	public Dept selectByNo(int deptno) throws Exception;
	// 부서 전체목록 반환
	public ArrayList<Dept> selectByAll() throws Exception;
	
}







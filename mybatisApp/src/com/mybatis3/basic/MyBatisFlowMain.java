package com.mybatis3.basic;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.mybatis3.domain.Student;

public class MyBatisFlowMain {

	public static void main(String[] args) throws Exception {
		/*
		 * 0.mybatis-config.xml --> InputStream
		 */
		InputStream mybatisConfigInputStream=Resources.getResourceAsStream("mybatis-config.xml");
		
		/*
		 * 1.SqlSessionFactoryBuilder 객체 얻기
		 */
		SqlSessionFactoryBuilder ssfb=new SqlSessionFactoryBuilder();
		
		/*
		 * 2. SqlSessionFactory 객체 얻기
		 */
		SqlSessionFactory ssf=ssfb.build(mybatisConfigInputStream);
		
		/*
		 * 3. SqlSession 객체 얻기
		 */
		SqlSession sqlSession = ssf.openSession();
		
		/*
		 * autocommit true 상태로 오픈
		 */
		/*
		 * 4. SqlSession사용(CRUD)
		 */
		System.out.println("SqlSession객체:"+sqlSession);
		Student findStudent=sqlSession.selectOne("com.mybatis3.dao.mapper.StudentMapper.findStudentById", new Integer(2));
		System.out.println("####"+findStudent);
		
		List<Student> studentList=sqlSession.selectList("com.mybatis3.dao.mapper.StudentMapper.findAllStudents");
		System.out.println(studentList);
		/*
		 * 5. SqlSession close
		 */
		sqlSession.close();
		
	}

}

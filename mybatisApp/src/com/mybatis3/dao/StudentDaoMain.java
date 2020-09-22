package com.mybatis3.dao;

import java.sql.Date;

import com.mybatis3.domain.Student;

public class StudentDaoMain {

	public static void main(String[] args) {
		StudentDao studentDao = new StudentDao();
		System.out.println("-------findStudentById-------");
		System.out.println("####"+studentDao.findStudentById(1));
		System.out.println("---------findAllStudents---------");
		System.out.println("####"+studentDao.findAllStudents());
		System.out.println("-------findStudentByIdResultMap-------");
		System.out.println("####"+studentDao.findStudentByIdResultMap(3));
		System.out.println("---------insertStudent(Dto)--------------");
		//Student student1 = new Student(8000,"김팔천","eight@naver.com",new java.util.Date());
		//System.out.println("####"+studentDao.insertStudent(student1));
		System.out.println("---------insertStudentBySequence1---------");
		//Student student2 = new Student(null,"김시퀀1","adfa3@naver.com",new java.util.Date());
		//System.out.println("####"+studentDao.insertStudentBySequence1(student2));
		System.out.println("---------insertStudentBySequence2---------");
		//Student student3 = new Student(null,"김시퀀2","fgadfa3@naver.com",new java.util.Date());
		//얘네들이 셀렉트키로 세팅해서 쓰기 때문에 student3 안에 id값이 입력되어 있게 된다.
		//System.out.println("####"+studentDao.insertStudentBySequence2(student3));
		//System.out.println("--->"+student3);
		//System.out.println("insert PK-->"+student3.getStudId());
		/*
		 * 시퀀스1은 객체는 만들어놓고 DB에 넣을때만 시퀀스를 넣어서 객체자체에는 id값이 널이다
		 * 그러나 시퀀스2는 셀렉트키가 시퀀스를 만들어서 객체를 만들고 DB에 insert하는거라 객체자체에 id값이 입력되어있게된다!!
		 */
		System.out.println("---------updateStudent-------------------");
		//Student updateStudent=studentDao.findStudentById(1);
		//updateStudent.setName("변경했로브스키");
		//updateStudent.setEmail("변경했로브스키@닷컴");
		//updateStudent.setDob(new Date(0));
		//System.out.println("####"+studentDao.updateStudent(updateStudent));
		//System.out.println("---------delete Student------------------");
		//System.out.println("####"+studentDao.deleteStudentById(4));
		//System.out.println("####"+studentDao.deleteStudentByName("박충만"));
		//System.out.println("####"+studentDao.deleteStudentByNameLike("김"));
		System.out.println("---------findStudentByIdWithAddress----------");
		System.out.println("####"+studentDao.findStudentByIdWithAddress(1));
		System.out.println("---------findStudentByIdWithCourses----------");
		System.out.println("####"+studentDao.findStudentByIdWithCourses(1));
		
		
		System.out.println("-------findStudentByIdMap-------");
		System.out.println("------------findAllStudentsMap-------------");
		System.out.println("---------findAllStudentsResultMap---------");
		System.out.println("---------findStudentByIdNestedfindAddressById-----------");
		System.out.println("---------insertStudentParameterMap(parameter Map)----");
		System.out.println("---------updateStudentDynamicSql---------");
		System.out.println("---------findStudentCount----------------");

	}
}

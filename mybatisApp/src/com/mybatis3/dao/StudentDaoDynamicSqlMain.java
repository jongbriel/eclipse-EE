package com.mybatis3.dao;

import java.util.Date;
import java.util.HashMap;

import com.mybatis3.domain.Student;

public class StudentDaoDynamicSqlMain {

	public static void main(String[] args) {
		StudentDaoDynamicSql studentDaoDynamicSql = new StudentDaoDynamicSql();
		Student findStudent=new Student();
		System.out.println("---------findStudents---------");
		System.out.println("###"+studentDaoDynamicSql.findStudents(findStudent));
	}
}

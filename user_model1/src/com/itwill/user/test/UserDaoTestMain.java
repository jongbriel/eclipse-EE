package com.itwill.user.test;

import java.util.Iterator;

import com.itwill.user.User;
import com.itwill.user.UserDao;

public class UserDaoTestMain {

	public static void main(String[] args) throws Exception{

		UserDao userDao = new UserDao();
		//System.out.println("1.insert:"+userDao.create(new User("guard122","1111","강호","강호@naver.com")));
		//User updateUser = new User("guard1232","1111","강호경11","강호경@naver.com");
		
		//userDao.create(updateUser);
		//System.out.println("2.update:"+userDao.update(updateUser));
		
		//System.out.println("3.remove:"+userDao.remove("guard1"));
		//System.out.println("4.findUser:"+userDao.findUser("guard2"));
		System.out.println(userDao.findUserList());
		/*
		 * for(User user:userDao.findUserList()) { System.out.println(user); }
		 */
		System.out.println("7.existedUser : "+userDao.existedUser("guard2"));
		
	}

}

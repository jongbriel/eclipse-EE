package com.itwill.guest.test;

import com.itwill.guest.Guest;
import com.itwill.guest.GuestDao;
import com.itwill.guest.GuestDaoImplMyBatis;

public class GuestDaoTestMain {

	public static void main(String[] args)throws Exception {
		GuestDao guestDao=new GuestDaoImplMyBatis();
		System.out.println(guestDao.selectAll());
		
		System.out.println("1.insert");
		Guest test1 = new Guest(-77, "카카카", "2020-09-21", "이메일", "홈페이지", "타이틀", "내용");
		
		System.out.println(guestDao.insertGuest(test1));
		/*
		
		Guest guest=guestDao.selectByNo(4);
		System.out.println(guest);
		 */
		//guest.setGuest_name("김변경");
		//System.out.println("2.update");
		//System.out.println(guestDao.updateGuest(guest));
	}	

}

package com.itwill.guest;


public class GuestDaoTestMain {

	public static void main(String[] args) throws Exception {
		
		GuestDao guestDao = new GuestDaoImpl();
		System.out.println(guestDao.selectAll());

	}

}

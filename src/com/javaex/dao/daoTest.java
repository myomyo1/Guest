package com.javaex.dao;

import java.util.List;

import com.javaex.vo.GuestVo;

public class daoTest {
public static void main(String[] args) {

	GuestDao dao = new GuestDao();
	GuestVo vo = new GuestVo("테스트", "테스트", "테스트");
	
	dao.insert(vo);
	List<GuestVo> gList = dao.showListAll();
	
	for(GuestVo gvo : gList) {
		System.out.println(gvo.toString());
	}
	
}
}

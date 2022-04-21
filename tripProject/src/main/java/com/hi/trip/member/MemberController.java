package com.hi.trip.member;

import java.awt.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class MemberController {

	@Autowired
	MemberDAO dao;
	
	@RequestMapping("member/createMember")
	public void createMember(MemberVO vo)
	{
		System.out.println(vo);
		dao.create(vo);
	}
	
	
	
}

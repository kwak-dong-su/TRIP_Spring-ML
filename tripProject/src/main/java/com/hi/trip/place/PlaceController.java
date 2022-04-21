package com.hi.trip.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PlaceController {

	@Autowired
	PlaceDAO dao;

	@RequestMapping("/mainlist")
	public void list(PlaceVO vo, Model model) {
		System.out.println("Controller까지 감");
		List<PlaceVO> list = dao.randlist();
		model.addAttribute("list", list);
		System.out.println(list);
	}
}

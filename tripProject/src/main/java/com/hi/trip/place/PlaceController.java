package com.hi.trip.place;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PlaceController {

	@Autowired
	PlaceDAO dao;

	@RequestMapping("/slidelist")
	public void slidelist(PlaceVO vo, Model model) {
		List<PlaceVO> list = dao.slidelist();
		model.addAttribute("list", list);
		System.out.println(list);
	}
	
	@RequestMapping("/likelist")
	public void likelist(PlaceVO vo, Model model) {
		List<PlaceVO> list = dao.likelist();
		model.addAttribute("list", list);
		System.out.println(list);
	}
}

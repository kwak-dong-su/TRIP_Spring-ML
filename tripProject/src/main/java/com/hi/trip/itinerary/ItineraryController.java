package com.hi.trip.itinerary;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ItineraryController {

	@Autowired
	ItineraryDAO dao;

	@RequestMapping("/slideshow")
	public void slideshow(ItineraryVO vo, Model model) {
		List<ItineraryVO> list = dao.slideshow();
		model.addAttribute("list", list);
	}
	
}

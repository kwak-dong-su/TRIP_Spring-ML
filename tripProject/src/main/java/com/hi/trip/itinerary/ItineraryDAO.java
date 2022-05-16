package com.hi.trip.itinerary;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class ItineraryDAO {
	@Autowired
	SqlSessionTemplate my;
	
	public List<ItineraryVO> slideshow() {
		return my.selectList("itinerary.slideshow");
	}
}

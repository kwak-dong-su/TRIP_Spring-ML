package com.hi.trip.place;

public class PlaceVO {

	private int place_idx;
	private String place_name;
	
	public int getPlace_idx() {
		return place_idx;
	}
	public void setPlace_idx(int place_idx) {
		this.place_idx = place_idx;
	}
	public String getPlace_name() {
		return place_name;
	}
	public void setPlace_name(String place_name) {
		this.place_name = place_name;
	}
	@Override
	public String toString() {
		return "PlaceVO [place_idx=" + place_idx + ", place_name=" + place_name + "]";
	}
	
	
}

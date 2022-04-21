package com.hi.trip.place;

public class PlaceVO {
	private int place_idx;
	private String place_name;
	private String place_address;
	private String place_img;
	private String place_info;
	private String place_reviewurl;
	private String place_coor1;
	private String place_coor2;
	private int place_view;
	private int place_like;
	private int place_recommended;
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
	public String getPlace_address() {
		return place_address;
	}
	public void setPlace_address(String place_address) {
		this.place_address = place_address;
	}
	public String getPlace_img() {
		return place_img;
	}
	public void setPlace_img(String place_img) {
		this.place_img = place_img;
	}
	public String getPlace_info() {
		return place_info;
	}
	public void setPlace_info(String place_info) {
		this.place_info = place_info;
	}
	public String getPlace_reviewurl() {
		return place_reviewurl;
	}
	public void setPlace_reviewurl(String place_reviewurl) {
		this.place_reviewurl = place_reviewurl;
	}
	public String getPlace_coor1() {
		return place_coor1;
	}
	public void setPlace_coor1(String place_coor1) {
		this.place_coor1 = place_coor1;
	}
	public String getPlace_coor2() {
		return place_coor2;
	}
	public void setPlace_coor2(String place_coor2) {
		this.place_coor2 = place_coor2;
	}
	public int getPlace_view() {
		return place_view;
	}
	public void setPlace_view(int place_view) {
		this.place_view = place_view;
	}
	public int getPlace_like() {
		return place_like;
	}
	public void setPlace_like(int place_like) {
		this.place_like = place_like;
	}
	public int getPlace_recommended() {
		return place_recommended;
	}
	public void setPlace_recommended(int place_recommended) {
		this.place_recommended = place_recommended;
	}
	@Override
	public String toString() {
		return "PlaceVO [place_idx=" + place_idx + ", place_name=" + place_name + ", place_address=" + place_address
				+ ", place_img=" + place_img + ", place_info=" + place_info + ", place_reviewurl=" + place_reviewurl
				+ ", place_coor1=" + place_coor1 + ", place_coor2=" + place_coor2 + ", place_view=" + place_view
				+ ", place_like=" + place_like + ", place_recommended=" + place_recommended + "]";
	}
	
	
	
	
}

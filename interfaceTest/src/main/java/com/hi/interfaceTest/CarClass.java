package com.hi.interfaceTest;

public abstract class CarClass implements CarInterface {

	
	String color;
	String type;
	
	@Override
	public void move() {
		System.out.println("이동합니다.");

	}

	@Override
	public void stop() {
		System.out.println("멈춥니다.");

	}

}

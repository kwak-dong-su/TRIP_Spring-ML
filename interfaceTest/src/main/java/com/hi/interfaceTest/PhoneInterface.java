package com.hi.interfaceTest;

public interface PhoneInterface {

	//가능만을 정의
	//public abstract로 구현
	
	//일반 변수는 안되고, 상수만 허용!
	public final String con="전화기협회";
	
	public abstract void call();
	void internet();
	void text();
	
}

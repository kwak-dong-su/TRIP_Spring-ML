package com.hi.interfaceTest;

public class PhoneMain {

	public static void main(String[] args) {
		//객체 생성은 완벽한 클래스만 가능
		//일반 메소드만 있어야 객체생성 가능
		//추상메소드를 포함하고 있는 클래스는 개체 생성이 되지 않는다.
		
		PhoneClass phone=new PhoneClass();
		phone.color="빨강";
		phone.size=11;
		
		phone.call();
		
		AppleKorea a=new AppleKorea();
		a.pay();
		
		AppleUSA a2=new AppleUSA();
		a2.pay();
	}

}

package com.hi.interfaceTest;

public class 형변환참조형 {
	//주소가 들어가 있음
	//상속관계에 있는 클래스들만 형변환이 까능
	
	//byte[] a= {1,2,3};
	//int[] b=a;
	
	public void main(String[] arge)
	{
		//부모클래스(큰)
		PhoneInterface p=new PhoneClass();
		//자식클래스(작은)
		PhoneInterface a=new AppleKorea();
		PhoneInterface u=new AppleUSA();
		
		p=a; //자동 형변환(큰<--작)
		a=(AppleKorea)p; //강제형변환(작<--큰)
		u=(AppleUSA)p; //강제형변환(작<--큰)
		
	}
}

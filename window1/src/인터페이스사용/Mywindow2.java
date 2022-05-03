package 인터페이스사용;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class Mywindow2 implements ActionListener {
	static JButton b3; //전역변수, 클래스 내 아무곳에서나 사용 사능한 변수
	
	public static void main(String[] args) {
		
		JFrame f=new JFrame();
		f.setSize(800,800);
		
		//위치를 내 마음대로 지정할 수 있음.
		f.getContentPane().setLayout(null);
		Font font =new Font("맑은 고딕", Font.BOLD, 25);
		
		JButton b1=new JButton(); //지역변수(main)
		b1.setText("나를 눌러요.");
		b1.setFont(font);
		f.add(b1);
		b1.setBounds(100, 100, 200, 200);
		b1.setBackground(Color.CYAN); //배경색
		b1.setForeground(Color.DARK_GRAY); //글자색
		
		JButton b2=new JButton();
		b2.setText("나도 눌러요.");
		b2.setFont(font);
		f.add(b2);
		b2.setBounds(450, 100, 200, 200); //x, y, 가로, 세로
		b2.setBackground(Color.BLUE); //배경색
		b2.setForeground(Color.MAGENTA); //글자색
		
		b3=new JButton();
		b3.setText("나도 눌러요.");
		b3.setFont(font);
		f.add(b3);
		b3.setBounds(100, 450, 200, 200); //x, y, 가로, 세로
		b3.setBackground(Color.BLACK); //배경색
		b3.setForeground(Color.WHITE); //글자색
		
		JButton b4=new JButton();
		b4.setText("나도 눌러요.");
		b4.setFont(font);
		f.add(b4);
		b4.setBounds(450, 450, 200, 200); //x, y, 가로, 세로
		b4.setBackground(Color.ORANGE); //배경색
		b4.setForeground(Color.YELLOW); //글자색
		
		
		ClickEvent1 event1=new ClickEvent1();
		b1.addActionListener(event1);
		
		//b2를 처리할 수 있는 클래스를 actionlistener 인터페이스에 따라서
		//구현한 후, b2에 처리할 수 있는 클래스로 설정해주세요.!
		
		ClickEvent2 event2=new ClickEvent2();
		b2.addActionListener(event2);
		
		Mywindow2 event3=new Mywindow2();
		b3.addActionListener(event3);
		b4.addActionListener(event3);
		
		
		
		f.setVisible(true);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==b3)
		{
			JOptionPane.showMessageDialog(null, "b3를 클릭하셨군요");
		}
		else
		{
			JOptionPane.showMessageDialog(null, "b4를 클릭하셨군요");
		}
		
	}

}

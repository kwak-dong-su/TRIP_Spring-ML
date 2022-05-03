package 인터페이스사용;

import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

public class Mywindow4 {

	static int i;
	public static void main(String[] args) {
		
		JFrame f=new JFrame();
		f.setSize(500,800);
		
		f.setLayout(new FlowLayout());
		
		
		JLabel l0=new JLabel();
		//image의 위치는 project 아래에!
		ImageIcon icon=new ImageIcon("강아지.jpg");
		l0.setIcon(icon);
		f.add(l0);
		
		JLabel l1=new JLabel("숫자1"); //글자!
		JLabel l2=new JLabel("숫자2");
		JTextField t1=new JTextField(10);
		JTextField t2=new JTextField(10);
		
		
		f.add(l1);
		f.add(l2);
		f.add(t1);
		f.add(t2);
		
		
		
		JButton b1=new JButton("더하기");
		JButton b2=new JButton("빼기");
		JButton b3=new JButton("곱하기");
		JButton b4=new JButton("나누기");
		JButton b5=new JButton("결과");
		
		f.add(b1);
		f.add(b2);
		f.add(b3);
		f.add(b4);
		f.add(b5);
		
		b1.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				String s1=t1.getText();
				String s2=t2.getText();
				int i1=Integer.parseInt(s1);
				int i2=Integer.parseInt(s2);
				int result=i1+i2;
				b5.setText("결과는 "+result);
				
				
			}
		});
		
		b2.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				String s1=t1.getText();
				String s2=t2.getText();
				int i1=Integer.parseInt(s1);
				int i2=Integer.parseInt(s2);
				int result=i1-i2;
				b5.setText("결과는 "+result);
				
				
			}
		});

		
		b3.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				String s1=t1.getText();
				String s2=t2.getText();
				int i1=Integer.parseInt(s1);
				int i2=Integer.parseInt(s2);
				int result=i1*i2;
				b5.setText("결과는 "+result);
				
				
			}
		});

		
		b4.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				String s1=t1.getText();
				String s2=t2.getText();
				int i1=Integer.parseInt(s1);
				int i2=Integer.parseInt(s2);
				float result=i1/i2;
				b5.setText("결과는 "+result);
				
				
			}
		});
		
		
		
		
		for(i=0;i<50;i++)
		{
			JButton b=new JButton("버튼"+i);
			f.add(b);
			b.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					JOptionPane.showMessageDialog(f, "좌석 번호: "+e.getActionCommand()+"번을 선택하셨군요.!!");
					
				}
			});
		}
		
		f.setVisible(true);

	}

}

package 인터페이스사용;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;

public class CatchingMole {

	static int i;
	static List<JButton> bList=new ArrayList<JButton>();
	public static void main(String[] args) {
		JFrame f=new JFrame();
		f.setSize(800,800);
		f.getContentPane().setLayout(null);
		
		ImageIcon icon1=new ImageIcon("두더지있음.PNG");
		ImageIcon icon2=new ImageIcon("두더지없음.PNG");
		

		JLabel l1=new JLabel("현재 점수: "); //글자!
		JLabel l2=new JLabel("0점");
		
		l1.setBounds(100, 10, 100, 100); //x, y, 가로, 세로
		l2.setBounds(200, 10, 100, 100); //x, y, 가로, 세로
		
		f.add(l1);
		f.add(l2);
		
		
		JButton b1=new JButton("게임 시작");
		f.add(b1);
		b1.setBounds(280, 35, 200, 50);
		
		b1.addActionListener(new ActionListener() {
			Random random = new Random();		
			@Override
			public void actionPerformed(ActionEvent e) {
				
				
					try
					{
						for(int i=0;i<5;i++)
						{
							int num=random.nextInt(9);
							System.out.println(num);
							bList.get(num).setIcon(icon1);
							Thread.sleep(1000);
							bList.get(num).setIcon(icon2);
						}
						JOptionPane.showMessageDialog(f, "게임 종료!");
						
					} 
					catch (InterruptedException e1)
					{
						e1.printStackTrace();
					} 
			}
		});
		
		
		
		int x=180;
		int y=200;
		
		
		for(i=0;i<3;i++)
		{
			for(int j=0;j<3;j++)
			{
				JButton b=new JButton("버튼"+i);
				f.add(b);
				
				
				
				b.setIcon(icon2);
				f.add(b);
				b.setBounds(x*(j+1)-50, y*(i+1)-50, 125, 125);
				
				b.addActionListener(new ActionListener() {
					
					@Override
					public void actionPerformed(ActionEvent e) {
						JOptionPane.showMessageDialog(f, "번호: "+e.getActionCommand()+"번");
						
					}
				});
				
				bList.add(b);
			}
			
		}
		
		f.setVisible(true);

	}
}

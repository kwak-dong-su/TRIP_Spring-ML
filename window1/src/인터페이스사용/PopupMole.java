package 인터페이스사용;

import java.util.List;
import java.util.Random;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class PopupMole extends Thread {
	
	Random random = new Random();	
	ImageIcon icon1=new ImageIcon("두더지있음.PNG");
	ImageIcon icon2=new ImageIcon("두더지없음.PNG");
	
	public void run(List<JButton> bList, JFrame f) {
		
		
		try
		{
			for(int i=0;i<10;i++)
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
}

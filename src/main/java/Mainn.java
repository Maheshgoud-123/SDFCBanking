import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Mainn {

	public static void main(String[] args) {
		List<Emp>list=new ArrayList<Emp>();
		Scanner sc=new Scanner(System.in);
		while(true)
		{
			System.out.println("enter Emp details:");
			int id=sc.nextInt();
			String name=sc.next();
			double salary=sc.nextDouble();
			
		Emp e= new Emp(id,name,salary);
		list.add(e);
		
	System.out.println("do you want to add one more(y/n):");
	  char ch=sc.next().charAt(0);
	  if(ch=='n')
	  {
		  break;
	  }
		}
		System.out.println("details are:");
		for(Emp x:list)
		{
			System.out.println(x.id+","+x.name+","+x.salary);
			
		  
	  
		}
		

	}

	private static void charAt(int i) {
		// TODO Auto-generated method stub
		
	}

}

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		List<Employee>list=new ArrayList<Employee>();
		Scanner sc= new Scanner(System.in);
		while(true)
		{
			System.out.println("enter details:");
			int id=sc.nextInt();
			String name=sc.next();
			double salary=sc.nextDouble();
			Employee e=new Employee();
			e.setId(id);
			e.setName(name);
			e.setSalary(salary);
			
			list.add(e);
			System.out.println("do you want to continue(y/n):");
			char ch=sc.next().charAt(0);
			if(ch=='n')
			{
				break;
			}
		}
		System.out.println("details are:");
		for(Employee x:list)
		{
			System.out.println();
		}
			
		
		

	}

}

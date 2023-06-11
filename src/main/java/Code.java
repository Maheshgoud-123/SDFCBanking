import java.util.Scanner;

public class Code {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		while(true)
		{
		System.out.println("enter a number");
		int n=sc.nextInt();
		if(n%2==0)
		System.out.println(n+"is even");
		else
		System.out.println(n+"is odd");
		System.out.println("do you want to continue(y/n):");
		char ch=sc.next().charAt(0);
		if(ch=='n')
			break;
		
		
		}
		
		

	}

}

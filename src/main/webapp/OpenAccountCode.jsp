<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
try
{ int accountNumber=Integer.parseInt(request.getParameter("accno"));
  String name=request.getParameter("name");
  String password=request.getParameter("psw");
  String confirmPassword=request.getParameter("cpsw");
  double amount=Double.parseDouble(request.getParameter("amt"));
  String address=request.getParameter("addr");
  int mobieleno=Integer.parseInt(request.getParameter("mno"));
  
  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
  PreparedStatement ps=con.prepareStatement("insert into SDFCBank values(?,?,?,?,?,?,?)");
  ps.setInt(1,accountNumber);
  ps.setString(2,name);
  ps.setString(3,password);
  ps.setString(4,confirmPassword);
  ps.setDouble(5,amount);
  ps.setString(6,address);
  ps.setInt(7,mobieleno);
  int i=ps.executeUpdate();
  out.print(i+"new Account inserted successfully");
  con.close();
}
catch(Exception ex)
{
	out.print(ex);
}

%>

</body>
</html>
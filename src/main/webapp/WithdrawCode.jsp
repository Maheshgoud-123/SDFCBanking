<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
<%@ page import="java.sql.*" %>
<%
try
{
int accountnumber=Integer.parseInt(request.getParameter("accno"));
String name=request.getParameter("name");
String password=request.getParameter("psw");
double amount=Double.parseDouble(request.getParameter("amt"));
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
PreparedStatement ps=con.prepareStatement("select amount from SDFCBank where accountnumber=?");
ps.setInt(1,accountnumber);
ResultSet rs=ps.executeQuery();
if(rs.next())
{
out.print("<h3> your account has been credited  by"+amount+"</h3>");
amount=rs.getDouble(1)-amount;
out.print("<h3> your account balance is"+amount+"</h3>");
}
PreparedStatement ps1=con.prepareStatement("update SDFCBank set amount=? where accountnumber=?");
ps1.setDouble(1,amount);
ps1.setInt(2,accountnumber);
ps1.executeUpdate();
con.close();
}
catch(Exception e)
{
	out.print(e);
}
%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import = "java.sql.*" %>
<%
try
{
 int accountnumber = Integer.parseInt(request.getParameter("accno"));
 String name = request.getParameter("name");
 String password = request.getParameter("psw");
 
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
 PreparedStatement ps = con.prepareStatement("delete SDFCBank where accountnumber=? and password=?");
 ps.setInt(1,accountnumber);
 ps.setString(2,password);
 int i = ps.executeUpdate();
 out.println(i +   "Your Account Has Been Closed");
 con.close();
  
}
catch(Exception e)
{
 out.println(e);
}
%>
</body>
</html>
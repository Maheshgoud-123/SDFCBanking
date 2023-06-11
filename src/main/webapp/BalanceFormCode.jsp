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
 PreparedStatement ps = con.prepareStatement("select * from SDFCBank where name = ? and password = ?");
 ps.setString(1,name);
 ps.setString(2,password);
 ResultSet rs= ps.executeQuery();
 ResultSetMetaData rsmd = rs.getMetaData();
 out.println("<table border = '1'>");
 int n = rsmd.getColumnCount();
 for(int i=1; i<=n; i++)
  out.println("<td> <font color=blue size=3>" + "<br>" + rsmd.getColumnName(i));
  out.println("<tr>");
  while(rs.next())
  {
   for(int i=1; i<=n; i++)
    out.println("<td><br>" + rs.getString(i));
   out.println("<tr>");
  }
  out.println("</table></body></html>");
  con.close();
 
 
 
}
catch(Exception e)
{
 out.print(e);
}


%>

</body>
</html>
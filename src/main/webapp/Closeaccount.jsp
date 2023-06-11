<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body style="background-color:yellow">
<center>
<form action="CloseaccountCode.jsp" method="post">
<h1 style="color:brown">SDFC BANK</h1>
<h2 style="color:blue">EXTRAODINARY SERVICES</h2>
<a href="home.jsp">HOME</a>&emsp;
<a href="NewAccount.jsp">NEW ACCOUNT</a>&emsp;
<a href="Balanceform.jsp">BALANCE</a>&emsp;
<a href="Deposite.jsp">DEPOSIT</a>&emsp;
<a href="Withdraw.jsp">WITHDRAW</a>&emsp;
<a href="Transfer.jsp">TRANSFER</a>&emsp;
<a href="Closeaccount.jsp">CLOSE ACCOUNT</a>&emsp;
<a href="Aboutus.jsp">ABOUTUS</a>
<h3 style="color:yellow">Close Account Form</h3>
Account Number:<input type="number" name="accno"><p></p>
Name:<input type="text" name="name"><p></p>
Password:<input type="password" name="psw"><p></p>
<input type="submit" value="submit">
<input type="reset" value="clear">
</form>
</center>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:lightpink">
<center>
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
<h3 style="color:green">OPEN ACCOUNT FORM</h3>
<form action = "OpenAccountCode.jsp" method = "post">
Account Number:<input type="number" name="accno"><p></p>
Name:<input type="text" name="name"><p></p>
Password:<input type="password" name="psw"><p></p>
Confirm Password:<input type="password" name="cpsw"><p></p>
Amount:<input type="number" name="amt"><p></p>
Address:<input type="text" name="addr"><p></p>
Mobile no:<input type="number" name="mno"><P></P>
<input type="submit" value="submit">
<input type="reset" value="clear">
</form>



</body>
</html>
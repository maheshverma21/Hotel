<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body background="../image/3.jpg">
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String s1,s2,s3,s4,s5,s6,s7,s8,s9;
	try
     {
     //Class.forName("oracle.jdbc.driver.OracleDriver");
     //c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sbit","yellow","page");   
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     c=DriverManager.getConnection("jdbc:odbc:sbit","rest","lko");     
     s=c.createStatement();
     s1=request.getParameter("t1");
	 s2=request.getParameter("t2");
	 s3=request.getParameter("t3");
	 s4=request.getParameter("t4");
	 s5=request.getParameter("t5");
     s6=request.getParameter("t6");
     s7=request.getParameter("t7");
     s8=request.getParameter("t8");
     i=s.executeUpdate("insert into complaint values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("Feedback submitted");
	  </script>
 
	<% } }%>


<form>
<br><p align="center"><font style="color:#999900" size="+2">Customer Feedback and Complaint Registration Form</font>  <br>
  <font size="+1" color="#000099"><a href="Home.jsp"><strong>|Home|</strong></a></font><br>
<font color="#003300"><table align="center" border="2" bordercolor="#FFFF00">
<tr><th>User Name</th><td><input type="text" name="t1" size="25"></td></tr>
<tr>
  <th><font color="#003300">M</font>ail<font color="#003300"> Id</font></th>
  <td><input type="text" name="t2" size="25" /></td>
</tr>
<tr><th>Contact No</th>
  <td><input type="text" name="t3" size="25"></td></tr>
<tr><th>Number on quality</th><td><strong>Not Good</strong>   <input type="radio" name="t4" value="Not Good"><strong>Good</strong><input type="radio" name="t4" value="good">   <strong>Excellent</strong><input type="radio" name="t4" value="excellent"></td></tr>

<tr><th>Number on Services</th><td><strong>Not Good</strong>   <input type="radio" name="t5" value="not good">   <strong>Good</strong><input type="radio" name="t5" value="good">   <strong>Excellent</strong><input type="radio" name="t5" value="excellent"></td></tr>

<tr><th>Number on Home Delivery</th><td><strong>Not Good</strong>   <input type="radio" name="t6" value="not good">   <strong>Good</strong><input type="radio" name="t6" value="good" >   <strong>Excellent</strong><input type="radio" name="t6" value="excellent"></td></tr>

<tr><th>Number on Product Information</th><td><strong>Not Good</strong>   <input type="radio" name="t7" value="not good">   <strong>Good</strong><input type="radio" name="t7" value="not good">   <strong>Excellent</strong><input type="radio" name="t7" value="excellent" ></td></tr>

<tr><th>Please give your valuable suggestions :</th><td bgcolor="#FFFFCC"><textarea name="t8" cols="60" rows="5"></textarea><td></tr>
<tr><td><input type="submit" value="Submit Feedback"></td></tr>
</table>
</font>
</p>
</form>
</body>
</html>

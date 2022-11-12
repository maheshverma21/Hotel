<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<table width="100%" height="257">
  <tr valign="top">
    <td width="23%" height="24" align="center"><p><strong>
      <marquee>
        </marquee>
    </strong><b>We Accept</b> </p>
        <p><img src="../image/blank/cards.gif" width="131" height="100" /> </p>
      <p><img src="../image/001.gif" width="92" height="36" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td width="54%" valign="top" align="left"><p><font size="+2" color="#990000"> Order Display Form </font></p>
        <p align="center">
          <%
    Connection c;
    Statement s;
	ResultSet r;
    try
     {
     //Class.forName("oracle.jdbc.driver.OracleDriver");
     //c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sbit","yellow","page");   
	 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
     c=DriverManager.getConnection("jdbc:odbc:sbit","rest","lko");     
     s=c.createStatement();
	 r=s.executeQuery("select *from order1");
	 out.println("<table border=1 bordercolor=#999900>");
	 out.println("<tr bgcolor=#CC9900>");
	 out.println("<th>");
	 out.println("Customer Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Address");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Contact No");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("E-mailId");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Food Item Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("No of Quantity");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Order Date");
	 out.println("</th>");
	
	 out.println("</tr>");
	
	 while(r.next())
	  { 
        out.println("<tr bgcolor=#CCCCCC>");
		out.println("<td>"+r.getString(1)+"</td>");
		out.println("<td>"+r.getString(2)+"</td>");
		out.println("<td>"+r.getString(3)+"</td>");
		out.println("<td>"+r.getString(4)+"</td>");
        out.println("<td>"+r.getString(5)+"</td>");
        out.println("<td>"+r.getString(6)+"</td>");
        out.println("<td>"+r.getString(7)+"</td>");
		out.println("</tr>");
	  }
	  out.println("</table>");
	  }catch(Exception e)
	  {
	 // out.println(e);
	  }
%>
        </p></td>
    <td width="23%"  valign="top" background=""><p><img src="../image/special_top.gif" width="202" height="67" /></p>
        <p><img src="../image/special_1.gif" width="202" height="67" /></p>
      <p align="center"><img src="../image/special_2.gif" width="202" height="66" /></p>
      <p align="center"><img src="../image/special_3.gif" width="202" height="82" /></p>
      <p align="center"><img src="../image/topmenu_right.gif" width="162" height="52" /><br />
            <img src="../image/top_pic.gif" width="162" height="59" /></p></td>
  </tr>
</table>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<p align="center">&nbsp;</p>
</body>
</html>

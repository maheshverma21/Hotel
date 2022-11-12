<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form>
<table width="100%" height="257">
  <tr valign="top">
    <td width="23%" height="24" align="center"><p><strong>
      <marquee>
        </marquee>
    </strong><b>We Accept</b> </p>
      <p><font size="+1" color="#000099"><a href="empacc.jsp"><strong>|Back|</strong></a></font></p>
        <p><img src="../image/blank/cards.gif" width="131" height="100" /> </p>
      <p><img src="../image/001.gif" width="92" height="36" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td width="54%" valign="top" align="left"><p><font color="#990000" size="+2">Check Order Availbility Status </font></p>
        <table width="490">
          <tr>
            <td width="305" height="36" align="left">&nbsp;</td>
          </tr>
          <tr>
            <td width="305" align="left"><strong>Enter Food Item Name:</strong> </td>
          </tr>
          <tr>
            <td width="305" align="left"><input type="text" name="t1" size="25" /> <input type="submit" name="click" value="Search" /><input type="submit" name="btn" value="Status Of All Food Item" /></td>
          </tr>
          <tr>
            <td width="305" align="left">&nbsp;</td>
          </tr>
          <tr>
            <td width="305" align="center">
    <% if(request.getParameter("click")!=null){
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
	 String s1=request.getParameter("t1");
	 r=s.executeQuery("select *from itemstatus where t2='"+s1+"' ");
	 out.println("<table bordercolor=#999900>");
	 out.println("<tr bgcolor=#CC9900>");
	 out.println("<th>");
	 out.println("Catogary Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Item Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("No of Quantity Available");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Date and Time");
	 out.println("</th>");
	 out.println("</tr>");
	
	 while(r.next())
	  { 
        out.println("<tr bgcolor=#CCCCCC>");
		out.println("<td>"+r.getString(1)+"</td>");
		out.println("<td>"+r.getString(2)+"</td>");
		out.println("<td>"+r.getString(3)+"</td>");
		out.println("<td>"+r.getString(4)+"</td>");
        out.println("</tr>");
	  }
	  out.println("</table>");
	  }catch(Exception e)
	  {
	 // out.println(e);
	  }
}%>
<% if(request.getParameter("btn")!=null){
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
	 String s1=request.getParameter("t1");
	 r=s.executeQuery("select *from itemstatus");
	 out.println("<table bordercolor=#999900>");
	 out.println("<tr bgcolor=#CC9900>");
	 out.println("<th>");
	 out.println("Catogary Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Item Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("No of Quantity Available");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Date and Time");
	 out.println("</th>");
	 out.println("</tr>");
	
	 while(r.next())
	  { 
        out.println("<tr bgcolor=#CCCCCC>");
		out.println("<td>"+r.getString(1)+"</td>");
		out.println("<td>"+r.getString(2)+"</td>");
		out.println("<td>"+r.getString(3)+"</td>");
		out.println("<td>"+r.getString(4)+"</td>");
        out.println("</tr>");
	  }
	  out.println("</table>");
	  }catch(Exception e)
	  {
	 // out.println(e);
	  }
}%></td>
          </tr>
          <tr>
            <td width="305" align="left">&nbsp;</td>
          </tr>
          <br />
          <br />
          <tr>
            <td width="305" height="40" align="left"><a href=""></a></td>
          </tr>
      </table></td>
    <td width="23%"  valign="top" background=""><p><img src="../image/special_top.gif" width="202" height="67" /></p>
        <p><img src="../image/special_1.gif" width="202" height="67" /></p>
      <p align="center"><img src="../image/special_2.gif" width="202" height="66" /></p>
      <p align="center"><img src="../image/special_3.gif" width="202" height="82" /></p>
      <p align="center"><img src="../image/topmenu_right.gif" width="162" height="52" /><br />
            <img src="../image/top_pic.gif" width="162" height="59" /></p></td>
  </tr>
</table>
</form>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<p align="center">&nbsp;</p>
</body>
</html>

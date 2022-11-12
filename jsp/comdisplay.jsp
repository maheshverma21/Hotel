<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>
<body>

<form>
  <p><font color="#990000" size="+4">Welcome in Administrator Account </font></p>
  <table width="100%" height="257" bgcolor="#FFFFFF">
    <tr valign="top">
      <td width="18%" align="left" valign="top"><img src="../image/pic_1.jpg" /><br />
          <img src="../image/images5.jpg" width="148" /><br />
          <img src="../image/photo.jpg" width="148" height="192" /><br />
          <img src="../image/hoover-index_r2_c1.jpg" width="147" /><br />
          <img src="../image/images13.jpg" /><br />
          <br />
          <br />
          <br />
          <br />
      </td>
      <td width="82%" height="24" align="left" valign="top"><p><font size="+3" color="#996600">Food Item Price Entry Form: </font><br />
              <font size="+2" color="#996600">Administrator can decides Food item price.<br />
                He/She can change item price time to time.</font> </p><p align="right"><font size="+1" color="#000099"><a href="adacc.jsp"><strong>|Back|</strong></a></font></p>
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
	 r=s.executeQuery("select *from complaint");
	 out.println("<table>");
	 out.println("<tr>");
	 out.println("<th>");
	 out.println("User Name");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Mail id");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Contact No");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Quality");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Services");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("Delivery");
	 out.println("</th>");
     out.println("<th>");
	 out.println("Product Information");
	 out.println("</th>");
	 out.println("<th>");
	 out.println("suggestion");
	 out.println("</th>");
	 out.println("</tr>");
	
	 while(r.next())
	  { 
        out.println("<tr>");
		out.println("<td>"+r.getString(1)+"</td>");
		out.println("<td>"+r.getString(2)+"</td>");
		out.println("<td>"+r.getString(3)+"</td>");
		out.println("<td>"+r.getString(4)+"</td>");
        out.println("<td>"+r.getString(5)+"</td>");
        out.println("<td>"+r.getString(6)+"</td>");
        out.println("<td>"+r.getString(7)+"</td>");
        out.println("<td>"+r.getString(8)+"</td>");

		out.println("</tr>");
	  }
	  out.println("</table>");
	  }catch(Exception e)
	  {
	 // out.println(e);
	  }
%>
        </p>
        <p align="center">&nbsp;</p>
        <p align="center"><img src="../image/footer_bckg.jpg" width="680" /></p></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p align="center">&nbsp;</p>
  <p>&nbsp; </p>
  <p align="center">&nbsp;</p>
</form>
</body>
</html>

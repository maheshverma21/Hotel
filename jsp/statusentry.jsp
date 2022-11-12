<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.Date" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String s1,s2,s3,s4;
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
	 Date obj=new Date(); 
	 i=s.executeUpdate("insert into itemstatus values('"+s1+"','"+s2+"','"+s3+"','"+obj+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
<script language="JavaScript" type="text/javascript">
	  alert("item entered");
	  </script>
<% } }%>
<form>
  <table width="100%" height="257">
    <tr valign="top">
      <td width="23%" height="24" align="center"><p><strong>
        <marquee>
          </marquee>
      </strong><b>We Accept</b> </p>
          <p><img src="../image/blank/cards.gif" width="131" height="100" /> </p>
        <p><img src="../image/001.gif" width="92" height="36" /></p>
        <p><img src="../image/pic_1.jpg" /></p>
        <p><img src="../image/header.jpg" width="188" height="296" /></p>
        <p>&nbsp;</p></td>
      <td width="54%" valign="top" align="left"><p><font size="+2" color="#990000">Item Status Entry   Form : </font></p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <table width="510" height="172">
            <tr>
              <td width="196" height="45" align="right"><b>Item Catagory :</b></td>
              <td width="302" align="left"><input type="text" name="t1" size="25" /></td>
            </tr>
            <tr>
              <td width="196" height="38" align="right"><strong>Item Name :</strong></td>
              <td width="302" align="left"><input type="text" name="t2" size="25" /></td>
            </tr>
            <tr>
              <td height="41" align="right"><strong>No Of Unit Available :</strong> </td>
              <td align="left"><input type="text" name="t3" size="25" /></td>
            </tr>
          <tr>
              <td height="36" align="right"></td><td height="36" align="left"><input type="submit" /></td>
          </tr>
        </table></td>
      <td width="23%"  valign="top" background=""><p><img src="../image/special_top.gif" width="202" height="67" /></p>
          <p><img src="../image/special_1.gif" width="202" height="67" /></p>
        <p align="center"><img src="../image/special_2.gif" width="202" height="66" /></p>
        <p align="center"><img src="../image/special_3.gif" width="202" height="82" /></p>
        <p align="center"><img src="../image/topmenu_right.gif" width="162" height="52" /><br />
              <img src="../image/top_pic.gif" width="162" height="59" /></p>
        <p align="center"><img src="../image/picture_1.jpg" width="93" height="84" /></p>
        <p align="center"><br />
              <img src="../image/picture_3.jpg" width="92" height="82" /></p>
        <p align="center">&nbsp;</p></td>
    </tr>
  </table>
</form>
</body>
</html>

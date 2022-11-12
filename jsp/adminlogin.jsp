<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<%if(request.getParameter("t1")!=null){%>
<% int i=2;
    Connection c;
    Statement s;
    ResultSet r;
    try
     {
      Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
      c=DriverManager.getConnection("jdbc:odbc:sbit","rest","lko");
      String uname=request.getParameter("t1");
	  String password=request.getParameter("t2");
	 // session.setAttribute("name",request.getParameter("uuid"));
      
	  s=c.createStatement();
      r=s.executeQuery("select *from admin");
     while(r.next())
       {
	  if(r.getString(1).equals(uname) && r.getString(2).equals(password))
        {
          i=1;
		  //session.setAttribute("uid",request.getParameter("uid"));
          response.sendRedirect("adacc.jsp");
		  break;
        }
		  i=0;
	   }
     }catch(Exception e)
      {
      System.out.println(e);
      }
    if(i==0)
	  {%>
	  <script language="javascript">
	  alert("wrong username and password");
	  </script>
	<% }} %>

<form>
<table width="100%" height="257">
  <tr valign="top">
    <td width="20%" height="24" align="center"><p><strong>
      <marquee>
        </marquee>
    </strong><b>We Accept</b> </p>
      <p><font size="+1" color="#000099"><a href="Home.jsp"><strong>|Home|</strong></a></font></p>
        <p><img src="../image/blank/cards.gif" width="131" height="100" /> </p>
      <p><img src="../image/001.gif" width="92" height="36" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp;</p></td>
    <td width="58%" valign="top" align="left"><p><font color="#990000" size="+2">Login Form: </font></p>
        <table width="567">
          <tr>
            <td height="50" align="right">&nbsp;</td>
            <td align="left">&nbsp;</td>
          </tr>
          <tr>
            <td height="31" align="right">&nbsp;</td>
            <td align="left"><font color="#993300" size="+2">Admin Login Form:</font> </td>
          </tr>
          <tr>
            <td width="152" height="49" align="right"><b>User Name:</b></td>
            <td width="403" align="left"><input type="text" name="t1" size="20" /></td>
          </tr>
          <tr>
            <td width="152" height="50" align="right"><strong>Password:</strong></td>
            <td width="403" align="left"><input type="password" name="t2" size="20" /></td>
          </tr>
          <tr>
            <td width="152" height="36" align="right">&nbsp;</td>
            <td width="403" align="left"><input type="submit" value="Submit" /><input type="reset" /> </td>
          </tr>
               </table></td>
    <td width="22%"  valign="top" background=""><p><img src="../image/special_top.gif" width="202" height="67" /></p>
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

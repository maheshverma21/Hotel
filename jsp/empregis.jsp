<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
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
    String s1,s2,s3,s4,s5,s7,s8,s9,s10;
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
	 s5=request.getParameter("t5")+","+request.getParameter("t6")+","+request.getParameter("t7");
     String t[]=request.getParameterValues("t8");
String s6="";
for(int i=0;i<t.length;i++)
{
s6+=t[i]+",";
}
	   s7=request.getParameter("t9");
	   s8=request.getParameter("t10");
       s9=request.getParameter("t11");
	   s10=request.getParameter("t12");
	 i=s.executeUpdate("insert into empregis values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("Employee Registered");
	  </script>
 
	<% } }%>

<form>
<table width="100%" height="257">
  <tr valign="top">
    <td width="20%" height="24" align="center"><p><strong>
      <marquee>
        </marquee>
    </strong><b>We Accept</b> </p>
      <p><font size="+1" color="#000099"><a href="adacc.jsp"><strong>|Back|</strong></a></font></p>
        <p><img src="../image/blank/cards.gif" width="131" height="100" /> </p>
      <p><img src="../image/001.gif" width="92" height="36" /></p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
      <p>&nbsp; </p>
      <p>&nbsp;</p>
      <p>&nbsp;</p>
    <p>&nbsp;</p></td>
    <td width="58%" valign="top" align="left"><p><font size="+2" color="#990000">Employee Registration Form </font></p>
        <table width="567">
          <tr>
            <td width="83" align="right"><b>Customer Name:</b></td>
            <td width="472" align="left"><input type="text" name="t1" size="20" /></td>
          </tr>
          <tr>
            <td width="83" align="right"><strong>Address:</strong></td>
            <td width="472" align="left"><textarea name="t2" cols="35" rows="5"></textarea></td>
          </tr>
          <tr>
            <td width="83" height="36" align="right"><b>Contact No:</b></td>
            <td width="472" align="left"><input type="text" name="t3" size="20" /></td>
          </tr>
          <tr>
            <td width="83" height="33" align="right"><b>MailId:</b></td>
            <td width="472" align="left"><input type="text" name="t4" size="20" /></td>
          </tr>
          <tr>
            <td width="83" align="right"><strong>Date of Birth:</strong></td>
            <td width="472" align="left"><strong>Date</strong>
              <select name="t5">
              <% for(int i=1;i<=31;i++){%>
			  <option><% out.println(i); %></option>
			          <% } %>
            </select>
              <strong>              Month</strong> 
              <select name="t6">
                <% for(int i=1;i<=12;i++){%>
			  <option><% out.println(i); %></option>
			          <% } %>
              </select>
              <strong>Year</strong><select name="t7">
                <% for(int i=1980;i<=2050;i++){%>
			  <option><% out.println(i); %></option>
			          <% } %>

            </select></td>
          </tr>
          <tr>
            <td width="83" height="36" align="right"><strong>Education:</strong></td>
            <td width="472" align="left"><input type="checkbox" name="t8" />
              <strong>High school</strong>
            <input type="checkbox" name="t8" />
            <strong>Intermediate</strong>
            <input type="checkbox" name="t8" />
            <strong>Graduation</strong>
            <input type="checkbox" name="t8" />
            <strong>Post Graduation</strong></td>
          </tr>
          <br />
          <br />
          <tr>
            <td height="51" align="right"><strong>Work Experience:</strong> </td>
            <td align="left"><strong>Select No of Year</strong>              <select name="t9">
              <% for(int i=1;i<=31;i++){%>
              <option>
                <% out.println(i); %>
              </option>
              <% } %>
            </select></td>
          </tr>
          <tr>
            <td height="44" align="right"><strong>Gender:</strong></td>
            <td align="left"><input type="radio" name="t10" value="Male" /><strong>Male</strong><input type="radio" name="t10" value="FeMale" /><strong>FeMale</strong></td>
          </tr>
          <tr>
            <td height="41" align="right"><strong>Username:</strong></td>
            <td align="left"><input type="text" name="t11" size="20" /></td>
          </tr>
          <tr>
            <td height="44" align="right"><strong>Password:</strong></td>
            <td align="left"><input type="password" name="t12" size="20" /></td>
          </tr>
          <tr>
            <td align="right"><strong>Retype Password:</strong> </td>
            <td align="left"><input type="text" name="t13" size="20" /></td>
          </tr>
          <tr>
            <td width="83" align="right"></td>
            <td width="472" align="left"><input name="submit" type="submit" value="submit order" /><input type="reset" value="Reset" /></td>
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

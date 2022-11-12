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
	 s4=request.getParameter("t4")+","+request.getParameter("t5")+","+request.getParameter("t6");
     i=s.executeUpdate("insert into priceentry values('"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("price entered successfully");
	  </script>
 
	<% } }%>

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
      <br />      <br />
    </td>
    <td width="82%" height="24" align="left" valign="top"><p><font size="+3" color="#996600">Food Item Price Entry Form: </font>  <p align="right"><font size="+1" color="#000099"><a href="adacc.jsp"><strong>|Back|</strong></a></font></p></font><br /><font size="+2" color="#996600">Administrator can decides Food item price.<br />He/She can change item price time to time.</font> </p>
        <table width="679" bgcolor="#999933" border="1" bordercolor="#990000">
          <tr>
            <td width="187" height="21" align="center">&nbsp;</td>
            <td width="318" align="center">&nbsp;</td>
            <td width="158" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td height="26" align="right"><strong>Item Catagory:</strong> </td>
            <td align="left"><input type="text" name="t1" /></td>
            <td align="left">&nbsp;</td>
          </tr>
          <tr>
            <td height="26" align="right"><strong>Item Name:</strong> </td>
            <td align="left"><input type="text" name="t2" /></td>
            <td align="left">&nbsp;</td>
          </tr>
          <tr>
            <td height="26" align="right"><strong>Item Price:</strong> </td>
            <td align="left"><input type="text" name="t3" /></td>
            <td align="left">&nbsp;</td>
          </tr>
 
          
          <tr>
            <td height="28" align="right"><strong>Price Update Date:</strong> </td>
            <td align="left"><strong>Date</strong>
              <select name="t4">
                <%
for(int vl=1;vl<=31;vl++){%>
                <option value="<%=vl%>"><%=vl%></option>
                <%}%>
              </select>
              <strong>Month</strong>
              <select name="t5">
                <%
for(int vl=1;vl<=12;vl++){%>
                <option value="<%=vl%>"><%=vl%></option>
                <%}%>
              </select>
              <strong>Year </strong>
              <select name="t6">
                <%
for(int vl=2000;vl<=2050;vl++){%>
                <option value="<%=vl%>"><%=vl%></option>
                <%}%>
              </select></td>
            <td align="right">&nbsp;</td>
          </tr>
              <tr>
            <td width="187" height="40" align="right">&nbsp;</td>
            <td width="318" align="left"><input type="submit" value="Submit" /><input type="reset" /></td>
            <td width="158" align="right">&nbsp;</td>
          </tr>
        </table>
    <img src="../image/footer_bckg.jpg" width="680" /></td>
  </tr>
</table>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<p align="center">&nbsp;</p>
</form>
</body>
</html>

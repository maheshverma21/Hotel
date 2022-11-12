<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,java.util.Date" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.unnamed1 {FONT-SIZE: 10px; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif
}
-->
</style>
</head>
<script language="javascript">
function blank()
{
   s1=document.det.t1.value;
	 if(s1=="")
	 {
	  alert("Name can not be blank");
	  document.det.t1.focus();
	  return false;
	 }
	 s2=document.det.t2.value;
	 if(s2=="")
	 {
	  alert("Adress can not be blank");
	  document.det.t2.focus();
	  return false;
	 }
	 s3=document.det.t4.value;
	 if(s3=="")
	 {
	  alert("Mail id can not be blank");
	  document.det.t12.focus();
	  return false;
	 }
	return true;
}
function numericblank()
 {
	 s=document.det.t3.value;
	 if(s=="")
	 {
	  alert("Number  can not be blank");
	  document.det.t3.focus();
	 }
  if(s!=null)
  {
	var i;
	b=true;
    s=document.det.t3.value;
	if(s.length>10)
	{
	alert("enter numbers of size10");
   document.det.t3.focus();  
	}
    for (i = 0; i < s.length; i++){   
        // Check that current character is number.
        var c = s.charAt(i);
        if (((c < "0") || (c > "9")))
		b=false;
    }
	if(b==false)
	 {
	  alert("enter numbers between 0 to 9");
	  document.det.t3.focus(); 
	 }
    // All characters are numbers.
    return true; 
  }
 }
</script>
<body background="../images/exptextb.jpg">
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String s1,s2,s3,s4,s5,s6;
	try
     {
     //Class.forName("oracle.jdbc.driver.OracleDriver");
     //c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:sbit","yellow","page");   
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Resturent","root","sbit");  
     Date obj=new Date(); 
	 s=con.createStatement();
     s1=request.getParameter("t1");
	 s2=request.getParameter("t2");
	 s3=request.getParameter("t3");
	 s4=request.getParameter("t4");
	 s5=request.getParameter("t5");
	 s6=request.getParameter("t6");
	 i=s.executeUpdate("insert into order1 values("+1+",'"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+obj+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("welcome user registered");
	  </script>
 
	<% } }%>
    <form name="det" id="det" onsubmit=" return validate();" method="get" action="">
<table width="100%" height="257">
  <tr valign="top">
        <td width="23%" height="24" align="center">        <p><strong>
          <marquee>
          </marquee>
        </strong><b>We Accept</b> </p>
          <p><Font size="+1" color="#000099"><a href="Home.jsp"><strong>|Home|</strong></a></Font></p>
          <p><img src="../image/blank/cards.gif" width="131" height="100"> </p>
        <p><img src="../image/001.gif" width="92" height="36"></p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp; </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    <p>&nbsp;</p></td><td width="54%" valign="top" align="left"><p><font size="+2" color="#990000">Delivery Order Form </font></p>
      <table width="414">
      <tr>
        <td width="87" height="48" align="right"><b>Customer Name</b></td>
        <td width="272" align="left"><input type="text" name="t1" size="20" onblur="blank()"></td>
        </tr>
      <tr>
        <td width="87" height="100" align="right"><strong>Address</strong></td>
        <td width="272" align="left"><textarea name="t2" cols="35" rows="5" ></textarea></td>
        </tr>
		<tr>
        <td width="87" height="38" align="right"><b>Contact No</b></td>
        <td width="272" align="left"><input type="text" name="t3" size="20"></td>
        </tr>
		<tr>
        <td width="87" height="34" align="right"><b>MailId</b></td>
        <td width="272" align="left"><input type="text" name="t4" size="20"></td>
        </tr>
     <tr>
        <td width="87" height="45" align="right"><b>Food Items</b></td>
        <td width="272" align="left"><select name="t5">
		                             <option>Chinies</option>
									 <option>Punjabi</option>
									 <option>Continental</option>
									 <option>Muglai</option></select></td>
        </tr>
		<tr>
        <td width="87" height="37" align="right"><strong>Quantity</strong></td>
        <td width="272" align="left"><select name="t6">
            <% for(int i=1;i<=31;i++){%>
            <option>
              <% out.println(i); %>
              </option>
            <% } %>
          </select></td>
		</tr>
		<br><br>
		<tr>
		  <td height="34" align="right">&nbsp;</td>
		  <td align="left"><input name="submit" type="submit" value="submit order" onClick="blank();numericblank();"></td>
		  </tr>
		<tr>
        <td width="87" height="56" align="right"></td>
        <td width="272" align="left">&nbsp;</td>
		</tr>
    </table></td>
        <td width="23%"  valign="top" background=""><p><img src="../image/special_top.gif" width="202" height="67"></p><p><img src="../image/special_1.gif" width="202" height="67"></p>
          <p align="center"><img src="../image/special_2.gif" width="202" height="66"></p>
        <p align="center"><img src="../image/special_3.gif" width="202" height="82"></p>
		<p align="center"><img src="../image/topmenu_right.gif" width="162" height="52"><br><img src="../image/top_pic.gif" width="162" height="59"></p>	</td>
  </tr>
  
</table
></form>
<p>&nbsp;</p>

<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<p align="center">&nbsp;</p>
</body>
</html>

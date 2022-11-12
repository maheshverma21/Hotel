<%@ page import="java.sql.*" %>
<html>
<body>
<%if(request.getParameter("t1")!=null){%>
<% int i=2;
    Connection c;
    Statement s;
    ResultSet r;
    try
    {
      Class.forName("com.mysql.jdbc.Driver");  
     c=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","sbit");     
      String uname=request.getParameter("t1");
	  String password=request.getParameter("t2");
	 s=c.createStatement();
      r=s.executeQuery("select *from logintest");
     while(r.next())
       {
	  if(r.getString(2).equals(uname) && r.getString(3).equals(password))
        {
          i=1;
		 
          response.sendRedirect("empacc1.jsp");
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
<a href="forgetpage.jsp"><i>Forget Password</i></a>
<form>
<table align="center">
            <tr>
            <td height="31" align="right">&nbsp;</td>
            <td align="left"><font color="#993300" size="+2">Employee Registration Form:</font> </td>
          </tr>
          <tr>
            <td><b>User Name:</b></td>
            <td><input type="text" name="t1" size="20" /></td>
          </tr>
          <tr>
            <td><strong>Password:</strong></td>
            <td><input type="password" name="t2" size="20" /></td>
          </tr>
          <tr>
            <td><input type="submit" value="Submit" /><input type="reset" /> </td>
          </tr>
               </table>
</form>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp; </p>
<p align="center">&nbsp;</p>
</body>
</html>

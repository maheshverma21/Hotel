<%@ page import="java.sql.*" %>
<html>
<body>
<% String sq=null; %>
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
     s=c.createStatement();
     r=s.executeQuery("select *from logintest");
     while(r.next())
       {
  if(r.getString(2).equals(uname)) 
        {
          i=1;
          sq=r.getString(4); 
          out.println("Your question is : "+sq);                   
          break;
        }
		  i=0;
	   }
     }catch(Exception e)
      {
      System.out.println(e);
      }
//    c.close();
//    r.close();    
    if(i==0)
	  {%>
	  <script language="javascript">
	  alert("wrong username");
	  </script>
	<% }} %>

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
            <td><input type="submit" value="Submit" /><input type="reset" /> </td>
          </tr>
               </table>
</form>
<%if(request.getParameter("t1")!=null){%>
<% int i=2;String ans=null,seq=null,pass=null;
    Connection c;
    Statement s;
    ResultSet r;
    try
    {
     Class.forName("com.mysql.jdbc.Driver");  
     c=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","sbit");     
     ans=request.getParameter("t3");
     seq=request.getParameter("t2");
     s=c.createStatement();
     r=s.executeQuery("select *from logintest");
     while(r.next())
       {
  if((r.getString(4).equals(seq)) && (r.getString(5).equals(ans)))
       {
          i=1;
         // pass=r.getString(3); 
          pass="Hello";
          out.println("Your question is : "+pass);                   
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
	  alert("wrong Answer");
	  </script>
	<% }} %>

<form>
<table align="center">
            <tr>
            <td height="31" align="right">&nbsp;</td>
            <td align="left"><font color="#993300" size="+2">Employee Registration Form:</font> </td>
          </tr>
          <tr>
            <td><b>Security Question is :</b></td>
            <td><input type="text" name="t2" value="<% out.println(sq); %>" size="20" /></td>
          </tr>
          <tr>
            <td><b>plz give answer :</b></td>
            <td><input type="text" name="t3" size="20" /></td>
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

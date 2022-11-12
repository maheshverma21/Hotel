<%@ page import="java.sql.*" %>
<HTML>
<body>
<%! int i; %>
<%if(request.getParameter("t1")!=null){%>
<%  Connection c;
    Statement s;
    String cid,s1,s2,s3,s4,s5,s6,s8,s9;
	try
     {
    
     Class.forName("com.mysql.jdbc.Driver");  
     c=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","sbit");          
     s=c.createStatement();
                
                 cid=request.getParameter("cid");
                 s1=request.getParameter("t1");
	 s2=request.getParameter("t2");
	 s3=request.getParameter("t3");
	 s4=request.getParameter("t4");
	

	 i=s.executeUpdate("insert into logintest values('"+cid+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"')");
    }
	 catch(Exception e)
	  {
	  out.println(e);
	  }
	   if(i>0)
	   {%>
	   <script language="javascript">
	  alert("Request Recieved");
	  </script>
 

	<% } }%>

<form name="det" >
<table width="100%" height="257">
           <tr>
            <td><b>CustomerId</b></td>
            <td><input type="text" name="cid" size="20"  /></td>
          </tr>
          <tr>
            <td><b>User Name:</b></td>
            <td><input type="text" name="t1" size="20"  /></td>
          </tr>
          <tr>
            <td><strong>Password:</strong></td>
            <td><input type="text" name="t2"></textarea></td>
          </tr>
          <tr>
            <td><b>Sequrity Question:</b></td>
            <td><select name="t3">
             <option>Your pet name</option>
             <option>Your CAR No</option>
             <option>Your Favorite Colur</option></select> </td>
          </tr>
          <tr>
            <td><b>Answer:</b></td>
            <td><input type="text" name="t4" size="20"  /></td>
          </tr>
           <tr>
            <td></td>
            <td><input type="Submit" value="Submit" /></td>
          </tr>
          
  
</table>
</form>
</body>
</html>

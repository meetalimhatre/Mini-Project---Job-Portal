<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML><HEAD><FONT SIZE="4"COLOR="blue" FACE="roman">EMPLOYER HOME PAGE
</FONT><br>
<FONT SIZE="4"COLOR="blue" FACE="roman">WELCOME
  <%=session.getAttribute("x1") %></FONT>
<TITLE>EMPLOYER HOME PAGE</TITLE>
<META content="text/html; charset=windows-1252" http-equiv=Content-Type>
<META name=GENERATOR content="MSHTML 9.00.8080.16413"></HEAD>
<script type="text/javascript">
	window.history.forward();
	function.noBack();
	{
		window.history.forward();
	}
</script>
<BODY BGCOLOR="#4EE2EC" >

<form name="form1" action="login_e.jsp" method="post">
<input type="submit" value="LOGOUT" align="right">
</form>



<form NAME="CREATEACCTFORM" action="emp_home.jsp"  METHOD="POST" >
<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
	

	

	<table width="100%" border="0" cellpadding="7" cellspacing="0" class="bg_white">

	
	  
<tr>
				<td width="400" align="right" bgcolor="#736AFF">Add Jobs</td>
				
			</tr>

			   <tr>
				
					
			            <table border="0" align="center" cellpadding="0" cellspacing="0">
            			<tr>
            			
           				 <span id="email_msg">

           				 </span>
           				
           				 </tr>

           				 </table>
        				

			
				  <div id="EMAILID" style="width:250px; margin-left:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px; position:absolute;"></div>
					<div id="ERR_EMAIL" style="padding: 2px; width: 400px; display: none;" class="txt_red small_1"></div>
				

			</tr>
			   

			<tr>
				<td align="right" valign="top">Location: </td>

				<td valign="top" >
				
				<select  name="loc" style="width:165" ><option > - Select -</option><option >DELHI</option><option>BANGLORE</option><option>CHENNAI</option><option>GURGAON</option><option>HYDERABAD</option><option>MUMBAI</option><option>KOLKATA</option><option>PUNE</option><option>NOIDA</option><option>KANPUR</option></select>	

				<br>
				
				</tr>


		  <tr>
				<td align="right" valign="top"><span class="txt_orange"></span>Functional Area:  </td>
				<td valign="top"  >
					<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px; position:absolute;"></div>
				
					<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;" class="txt_red small_1"></div>
				</td>

			  </tr><tr>
			  <select name="area"  style="width:165" id="industry"  ><option> - Select - </option><option>Any</option><option>Automotive</option><option>Banking</option><option >Bio Technology</option><option>Chemicals</option><option>Construction</option><option>Consumer Goods</option><option>Education</option><option>Entertainment</option><option>Insurance</option><option>BPO</option><option>Hardware</option><option>Software</option></select>
				<br>
				<td align="right" valign="top"><span class="txt_orange"></span> Job Post:  </td>
				<select name="key" style="width:165" ><option> - Select - </option><option>Sales Executive</option><option>Teacher</option><option>Manager</option><option>Accounting</option><option>Technician</option><option> Software Professional</option><option>Software Tester</option><option>IT Professional</option></select>	
				<br><td align="right" valign="top"><span class="txt_orange"></span> Vacancy:  </td>
				<input type="text" name="vac" value=""><bR>
				<td align="right" valign="top"><span class="txt_orange"></span> Salary     :</td>
				<input type="text" name="sal" value=""><bR>
				<td align="right" valign="top"><span class="txt_orange"></span> Interview Date:  </td>
				<input type="text" name="ivdt" value=""><bR>
				<td align="right" valign="top"><span class="txt_orange"></span> Interview Time:  </td>
				<input type="text" name="ivt" value=""><bR>
				<td align="right" valign="top"><span class="txt_orange"></span> Interview Place:  </td>
				<input type="text" name="ivp" value=""><bR>
				<td valign="top"  ><br>
				<input maxlength="255" size="30" name="userName"   type="submit" value="ADD" >
					<div id="UNAME" style="width:250px; margin-left:205px; margin-top:-20px; _margin-left:20px; _margin-top:0px; position:absolute;"></div>

					<div id="ERR_UNAME" style="padding: 2px; width: 400px; display: none;" class="txt_red small_1"></div>
				</td>

			  </tr>
			 
		
				

		</table>


<%
String s1=request.getParameter("loc");
String s2=request.getParameter("area");
String s3=request.getParameter("key");
String s4=request.getParameter("vac");
String s5=request.getParameter("sal");
String s6=request.getParameter("ivdt");
String s7=request.getParameter("ivt");
String s8=request.getParameter("ivp");
if(s1!=null && s2!=null && s3!=null && s4!=null && s5!=null  && s6!=null && s7!=null && s8!=null){
try{
	String b1=(String)session.getAttribute("x1");
	Class.forName("com.mysql.jdbc.Driver");
	Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/abc",
            "root", "Meetali@99");
	Statement s =c.createStatement();
	String sql = "select * from employer where emp_name='"+b1+"'";
	ResultSet rs=s.executeQuery(sql);
	rs.next();
	Statement a =c.createStatement();
	String sql1 = "insert into job values('"+b1+"','"+rs.getString(3)+"','"+s4+"','"+s5+"','"+s2+"','"+s1+"','"+s3+"','"+s6+"','"+s7+"','"+s8+"')";	
	a.execute(sql1);

}catch(Exception e ){out.println(e);
}
}
%>
</table>
</form>

</body>
</html>
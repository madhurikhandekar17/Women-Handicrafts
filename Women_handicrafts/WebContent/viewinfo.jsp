<%@page import="com.handicraft.HandicraftInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %> 
  <jsp:useBean id="ob" class="com.handicraft.InformationBean"/>
 
 <!-- Request Parameter match Bean Property -->
 <jsp:setProperty name="ob" property="*"/>
 
 <!-- Pass intermediate data from web.xml -->
 <jsp:setProperty name="ob" property="dbdriver" value='<%=application.getInitParameter("dbdriver")%>'/>
 <jsp:setProperty name="ob" property="dburl" value='<%=application.getInitParameter("dburl")%>'/>
 <jsp:setProperty name="ob" property="dbuser" value='<%=application.getInitParameter("dbuser")%>'/>
 <jsp:setProperty name="ob" property="dbpass" value='<%=application.getInitParameter("dbpass")%>'/>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
	body
            {
                background-image: url(images/wp.jpg);
            }
             #message
            {
            float:left;
			height:300px;
			width:450px;
			background:rgba(0,0,0,0.7);
			margin-top:100px;
			margin-left:400px;
			border:5px solid darkblue;
			border-radius:0px 70px;
			box-shadow:10px 10px 6px pink;	
			font-size:30px;
			color:pink;
			padding:20px;
            }
		h3
		{
			font-family:Monotype Corsiva;
		}

	table
	{
		border-color: cyan;
		margin-top:50px;
		background:rgba(0,0,0,0.7);
		
	}
	th
	{
		color: #ff0066;
		 font-size: 20px;
	}
	tr
	{
	color:pink;
	 font-size: 20px;
	}
</style>

</head>
<body>

	<%String firstName=(String)session.getAttribute("firstName");
        String lastName=(String)session.getAttribute("lastName");
        if(firstName!=null && lastName!=null){
        %>
        <p style="color:blue;text-align:right;font-weight:bold">Welcome <%=firstName%> <%=lastName%> !! <br>
        <a href="Home.jsp">Home</a><br>
        <a href="logout.jsp">Logout</a>
        </p>
        
	<%String subcatlst=request.getParameter("subcatlst"); %>
	
	<center>
	<table border="1">
<tr>
<td><marquee  scrolldelay="50"><img src='images/<%=subcatlst%>1.jpg' width="400" height="300"></marquee></td>	
<td><marquee><img src='images/<%=subcatlst%>2.jpg' width="400" height="300"></marquee></td>	
<td><marquee><img src='images/<%=subcatlst%>3.jpg' width="400" height="300"></marquee></td>	
</tr>
</table>

	<table border="1" cellpadding="5" cellspacing="5">
	
		<caption>
	<h1>Product Name : <%=subcatlst %></h1></caption>
	
	<tr>
	<th>Product Code</th>
	<th>Vendor Name</th>
	<th>Vendor Address</th>
	<th>Vendor Contact</th>
	
	</tr>
	<%
	ArrayList lst=ob.getInfo(subcatlst);
	for(Object obj:lst){
	HandicraftInfo h=(HandicraftInfo)obj;
	%>
			<tr>
				<td><%=h.getProduct_code() %></td>
				<td><%=h.getVendorName() %></td>
				<td><%=h.getVendorAddress() %></td>
				<td><%=h.getVendorContact()%></td>
				</tr>
	<%}	%>
	</table>
	</center>
	
	
	<%}else{ %>
	<div id="message">
        <h3>You Need to Login to Proceed  by <a href="login.jsp">Clicking here</a><br>
 			
 			If you have not yet registered <a href="Registration.jsp">Click here</a>
 			</h3>
 			</div>
        <%} %>
	
</body>
</html>
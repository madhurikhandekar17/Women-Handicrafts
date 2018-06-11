<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="ob" class="com.handicraft.LoginBean"/>
 <jsp:setProperty name="ob" property="*"/>
 
  <!-- Pass intermediate data from web.xml -->
 <jsp:setProperty name="ob" property="dbdriver" value='<%=application.getInitParameter("dbdriver")%>'/>
 <jsp:setProperty name="ob" property="dburl" value='<%=application.getInitParameter("dburl")%>'/>
 <jsp:setProperty name="ob" property="dbuser" value='<%=application.getInitParameter("dbuser")%>'/>
 <jsp:setProperty name="ob" property="dbpass" value='<%=application.getInitParameter("dbpass")%>'/>
 


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
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

</style>

</head>

<body>

<%boolean r=ob.validUser();
session.setAttribute("firstName", ob.getFirstName());
session.setAttribute("lastName", ob.getLastName());
System.out.print(ob.getFirstName()+" put in session");

if(r==true){
%>
<jsp:forward page="QuickView.jsp"></jsp:forward>
<%}else{
	%>
	<div id="message">	
	
	<center>	<br><br><br>Invalid User !!!<br>
		<a href="login.jsp">try again</a></center>
	</div>
	<%
	}%>
	



</body>
</html>
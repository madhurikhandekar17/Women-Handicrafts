<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*" %> 
  <jsp:useBean id="ob" class="com.handicraft.FeedbackBean"/>
 
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
        <%} %>
<%
	boolean r=ob.saveFeedback();
	if(r==true){
%>
  <h1>Feedback send Successfully</h1>

<% }
	else
	{
%>
<h1>fail</h1>
<% } %>
</body>
</html>
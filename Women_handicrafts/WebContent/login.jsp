<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*" %>  
    <%@ page import="java.util.*" %>
    <jsp:useBean id="ob" class="com.handicraft.LoginBean"/>
 
 <!-- Request Parameter match Bean Property -->
 <jsp:setProperty name="ob" property="*"/>
 
 
  <!-- Pass intermediate data from web.xml -->
 <jsp:setProperty name="ob" property="dbdriver" value='<%=application.getInitParameter("dbdriver")%>'/>
 <jsp:setProperty name="ob" property="dburl" value='<%=application.getInitParameter("dburl")%>'/>
 <jsp:setProperty name="ob" property="dbuser" value='<%=application.getInitParameter("dbuser")%>'/>
 <jsp:setProperty name="ob" property="dbpass" value='<%=application.getInitParameter("dbpass")%>'/>
 


<html>
    <head>
         <script src="jquery-1.9.1.js"></script>
        <script src="jquery-ui.js"></script>
        <script>
		$(document).ready(function()
		{
			$(".btn").mouseenter(function()
			{
                $(this).addClass('style');
            })
            $('.btn').mouseleave(function()
			{
				$(this).removeClass('style');
			})
        });
        </script>
        
        <style type="text/css">
            body
            {
                background-image:url('images/wp1.jpg');
            }
           #login
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
			font-family:Monotype Corsiva;
			font-size:20px;
			color:pink;
			padding:20px;
            }
            tr
            {
                font-size: 25px;
                color: pink;
            }
            .btn
            {
                border-radius: 10px;
                height: 32px;
                width:105px;
                background-color:aquamarine;
                color: darkred;
            }
            h1
            {
                color: #ff0066;
                 font-size: 40px;
            }
            .style
            {
            color:darkred;
            font-size: 20px;
	        text-shadow:3px 3px 2px black; 
            }  
        </style>
    </head>
    <body bgcolor="red">
    <form method=get action="checkUser.jsp">
        <div id="login">
            <center>
            <form>
                <table cellpadding="5" cellspacing="10">
                    <caption><h1>Login</h1></caption>
                    <tr>
                        <td>UserName : </td>
                        <td><input type="text" name="email_id" placeholder="Enter your Email id" required/></td>
                    </tr>
                    <tr>
                        <td>Password : </td>
                        <td><input type="password" name="password" required/></td>
                    </tr>
                    
                    <tr><td><input type="submit" value="Login" class="btn"></td>
                        <td><input type="reset" value="Reset" class="btn"></td>
                    </tr>
                </table>
            </form>
            </center>
        </div>
        </form>
    </body>
</html>
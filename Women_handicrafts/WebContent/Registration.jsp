
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
                background-image: url(images/wp.jpg);
            }
           #regform
            {
            float:left;
			height:450px;
			width:500px;
			background:rgba(0,0,0,0.7);
			margin-top:90px;
			margin-left:350px;
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
                font-size:40px;
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
        <div id="regform">
            <center>
            <form method="get" action="adduser.jsp">
                <table cellpadding="5" cellspacing="10">
                    <caption><h1>Registration form</h1></caption>
                    <tr>
                        <td>First Name: </td>
                        <td><input type="text" name="fname" required/></td>
                    </tr>
                    <tr>
                        <td>Last Name: </td>
                        <td><input type="text" name="lname" required/></td>
                    </tr>
                    <tr>
                        <td>Gender : </td>
                        <td><input type="radio" name="gender" value="male" /> Male
                            <input type="radio" name="gender" value="female" /> Female</td>
                    </tr>
                     <tr>
                        <td>Address: </td>
                       <td><textarea name="address" ></textarea></td>
                    </tr>
                     <tr>
                        <td>Contact No: </td>
                        <td><input type="text" name="contact_no" required/></td>
                    </tr>
                     <tr>
                        <td>Email ID: </td>
                        <td><input type="email" name="email" required/></td>
                    </tr>
                    <tr><td><input type="submit" value="Register" id="b1" class="btn"></td>
                        <td><input type="reset" value="Reset" id="b2" class="btn"></td>
                    </tr>
                </table>
            </form>
            </center>
        </div>
    </body>
</html>
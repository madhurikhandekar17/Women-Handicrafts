<html>
    <head>
        <style type="text/css">
            body
            {
                background-image: url(images/wp.jpg);
            }
           #aboutus
            {
			float:left;
			height:250px;
			width:450px;
			background:rgba(0,0,0,0.7);
			margin-top:100px;
			margin-left:400px;
			border:5px solid darkblue;
			border-radius:0px 70px;
			box-shadow:10px 10px 6px pink;	
			font-size:20px;
			color:pink;
			padding:20px;  
            }
            tr
            {
                font-size: 20px;
            }
            h2
            {
                color: #ff0066;
            }
            
        </style>
    </head>
    <body bgcolor="red">
      <%String firstName=(String)session.getAttribute("firstName");
        String lastName=(String)session.getAttribute("lastName");
        if(firstName!=null && lastName!=null){
        %>
        <p style="color:blue;text-align:right;font-weight:bold">Welcome <%=firstName%> <%=lastName%> !! <br>
        <a href="Home.jsp">Home</a><br>
        
        <a href="logout.jsp">Logout</a>
        </p>
        <%} %>
        <div id="aboutus">
            <center><h2>About Us</h2></center>
            <p>We providing a platform for womens where womens can explore their idea's and handmade products.<br/><br/>
                Our contact details : <br/>
                Contact No : 9845367783 <br/>
                Email Id : abc@gmail.com
            </p>
            </center>
        </div>
    </body>
</html>
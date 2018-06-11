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
                background-image: url('images/wp1.jpg');
            }
           #feedback
            {
			float:left;
			height:300px;
			width:450px;
			background:rgba(0,0,0,0.7);
			margin-top:150px;
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
            }
            
           #whiteBackground
           {
            background-color:white;
            height:90px;
            width:1350px;
            margin-top:-5px;
           
           }
           
            .style
            {
            color:darkred;
            font-size: 20px;
	        text-shadow:3px 3px 2px black; 
            }  
            </style>
            
            
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
        
        <div id="feedback">
            <center>
            <form method="get" action="sendFeedback.jsp">
                <table cellpadding="5" cellspacing="10">
                    <caption><h1>Feedback</h1></caption>
                    <tr>
                        <td>Your Name : </td>
                        <td><input type="text" name="name" value='<%=session.getAttribute("firstName")%> <%=session.getAttribute("lastName")%>'/></td>
                       
                    </tr>
                    <tr>
                        <td>Select Rating out of 5 : </td>
                        <td><select name="rating">
                             <option>--select--</option>
			                 <option>1</option>
				             <option>2</option>
					         <option>3</option>
						     <option>4</option>
							 <option>5</option>
			             </select></td>
                    </tr>
                    <tr>
                        <td>Write comments : </td>
                        <td><textarea name="comments"></textarea></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="Post" class="btn"></td>
                        <td><input type="reset" value="Cancel" class="btn"></td>
                    </tr>
                </table>
            </form>
            </center>
        </div>
       
      
    </body>
</html>
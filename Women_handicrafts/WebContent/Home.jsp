<html>

<head>
    <script src="jquery-1.9.1.js"></script>
<script src="jquery-ui.js"></script>
<script>
		$(document).ready(function()
		{
			$('a').mouseenter(function()
			{
                $(this).addClass('style1');
            })
            $('a').mouseleave(function()
			{
				$(this).removeClass('style1');
			})
        });
</script>
    
    
    <style type="text/css">
        #div1
        {
            height: 100px;
            width: 1350px;
            
            
        }
       
         li{
             list-style:none;
             background-color:#33ccff;
             width:200px;
            margin-left:10px;
             margin-right:70px;
             margin-bottom:20px;
             box-shadow:10px 10px 5px #0000ff;
             border-radius:100px;
             height:50px;
             text-align:center;
             font-weight:bold;
             font-size:25px;
             color:#000000;
            }
       
        
        
        #caption
            {
            font-family:Cooper Black;
            font-size:70px;
            color:#663333;
            text-shadow:7px 7px 2px #6f6f6f;
            margin-top: 30px;
             margin-left: 50px;
         
            
            }
         
        #menu{
            width:1200px;
            height: 50px;
            background-color:crimson;    
            margin-top: 70px;    
            text-align: center;
            margin-left: 50px;
            margin-right: 10px;
   
            }

        a{
   
            text-decoration: none;  
            color:greenyellow;
            font-weight:bolder;
            font-family: Arial;
            font-size: 20px; 
            padding: 50px;
        }
        hr
        {
         border-width:medium;
              border-color: black;
              margin-top:60px;
        }
        #imagescroller
        {
            margin-left: 50px;
            margin-right: 10px;
            height:350px;
            width:1200px;
        }
        #imagescroller
        {
	   -webkit-animation:myanimation 15s;
	   -webkit-animation-iteration-count:infinite;
        }

        @-webkit-keyframes myanimation
        {
	   0%   {background-image:url('images/p1.png');}
	   25%  {background-image:url('images/p2.png');}
	   50%  {background-image:url('images/p3.png');}
	   100% {background-image:url('images/p4.png');}
}
.style1{
    color:lawngreen;
    font-size: 20px;
	text-shadow:3px 3px 2px black;        
}  
        
    </style>
</head>
    
<body>
    
  <div id="div1">
<h1 id="caption">Women <br>
    Handicrafts</h1>
      
</div>
  <%String firstName=(String)session.getAttribute("firstName");
        String lastName=(String)session.getAttribute("lastName");
        if(firstName!=null && lastName!=null){
        %>
        <p style="color:blue;text-align:right;font-weight:bold">Welcome <%=firstName%> <%=lastName%> !! <br>
       <!--  <a href="Home.jsp">Home</a><br> -->
        
        <a href="logout.jsp">Logout</a>
        
        </p>
        <%} %>
        <hr>
    <div id="menu"><br>
        <a href="Registration.jsp" >New User</a> | 
         <a href="VendorRegistration.jsp" >New Vendor</a> | 
             <a href="login.jsp" >Login </a> |
             <a href="QuickView.jsp" >Quick View</a> |
             <a href="feedback.jsp" >Feedback</a> |
            <a href="aboutUs.jsp" >AboutUs</a>
        
        
    </div>
    
            <div id="imagescroller">	              
            </div>
     
    
    
    
     
    
</body>



</html>
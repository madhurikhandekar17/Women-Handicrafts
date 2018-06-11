
 <%@ page import="java.util.*" %> 
  <jsp:useBean id="ob" class="com.handicraft.InformationBean"/>
 
 <!-- Pass intermediate data from web.xml -->
 <jsp:setProperty name="ob" property="dbdriver" value='<%=application.getInitParameter("dbdriver")%>'/>
 <jsp:setProperty name="ob" property="dburl" value='<%=application.getInitParameter("dburl")%>'/>
 <jsp:setProperty name="ob" property="dbuser" value='<%=application.getInitParameter("dbuser")%>'/>
 <jsp:setProperty name="ob" property="dbpass" value='<%=application.getInitParameter("dbpass")%>'/>


<html>
    <head>
      <style type="text/css">
          
          #categories
          {
              height: 500px;
              width: 250px;
              margin-top: 100px;
              margin-left: 30px;
              margin-right: 10px;
            
              
             }
          
        #caption
            {
            font-family:Cooper Black;
            font-size:50px;
            color:#663333;
            text-shadow:7px 7px 2px #6f6f6f;
            margin-top: 20px;
             margin-left: 40px;
         
             }
          hr{
            border-width:medium;
              border-color: black;
          }
          
         .maincat {
             float:left;
			height:350px;
			width:400px;
			background:rgba(128,255,0,0.5);
			margin-top:5px;
			margin-left:100px;
			border:5px solid #274f00;
			border-radius:0px 70px;
			box-shadow:10px 10px 6px  #ffff00;	
			font-size:20px;
			color:pink;
			padding:20px;
             
                }
          
          li{
               font-weight:bold;
               font-size:25px;
               color:crimson;
              width:250px;
            
              list-style:square;
          }

           .li{
                list-style:none;
               background-color:#996600;
               width:300px;
                margin-left:10px;
                margin-right:70px;
                margin-bottom:20px;
               box-shadow:10px 10px 5px #0000ff;
               border-radius:100px;
               height:40px;
               text-align:center;
               font-weight:bold;
               font-size:20px;
               color:crimson;
                }
          h2{
              text-decoration: underline;
              color: darkred;
              font-size: 30px;
              font-family:Monotype Corsiva;
          }
          
          .style1{
    color:crimson;
    font-size: 25px;
	text-shadow:2px 2px 5px black;        
	
	
}  
       
        </style>  
         <script src="jquery-1.9.1.js"></script>
        <script src="jquery-ui.js"></script>
        <script>
 			
	$(document).ready(function()
	{	
       $('.maincat').hide();
             $('#jwellaryimg').hide();
     
         
		$('#lst1').click(function()
		{
			
			$('.maincat').show();
			 $('#cloths').hide();
			 $('#footwares').hide();
			 $('#wallpices').hide();
			 $('#homedecorators').hide();
			 $('#utensils').hide();
			 $('#accessories').hide();
			 	
		})
		
        $('#lst2').click(function()
		{
			
			$('.maincat').show();
			 $('#jwellary').hide();
			 $('#footwares').hide();
			 $('#wallpices').hide();
			 $('#homedecorators').hide();
			 $('#utensils').hide();
			 $('#accessories').hide();
		})
		
		 $('#lst3').click(function()
		{
			
			$('.maincat').show();
			 $('#jwellary').hide();
			 $('#cloths').hide();
			 $('#wallpices').hide();
			 $('#homedecorators').hide();
			 $('#utensils').hide();
			 $('#accessories').hide();
		})
		
		 $('#lst4').click(function()
		{
			
			$('.maincat').show();
			 $('#jwellary').hide();
			 $('#cloths').hide();
			 $('#footwares').hide();
			 $('#homedecorators').hide();
			 $('#utensils').hide();
			 $('#accessories').hide();
			
		})
		 $('#lst5').click(function()
		{
			
			$('.maincat').show();
			 $('#jwellary').hide();
			 $('#cloths').hide();
			 $('#footwares').hide();
			 $('#wallpices').hide();
			 $('#utensils').hide();
			 $('#accessories').hide();
			
			
		})
		 $('#lst6').click(function()
		{
			
			$('.maincat').show();
			 $('#jwellary').hide();
			 $('#cloths').hide();
			 $('#footwares').hide();
			 $('#wallpices').hide();
			 $('#homedecorators').hide();
			 $('#accessories').hide();
			
			
			
		})
		 $('#lst7').click(function()
		{
			
			$('.maincat').show();
			 $('#jwellary').hide();
			 $('#cloths').hide();
			 $('#footwares').hide();
			 $('#wallpices').hide();
			 $('#homedecorators').hide();
			 $('#utensils').hide();

						
		})
			
			
			 
			 
        $('li').mouseenter(function()
			{
                $(this).addClass('style1');
            })
            $('li').mouseleave(function()
			{
				$(this).removeClass('style1');
			})
       
    });
     
        </script>
        
    </head>
    
    <body>
        
        <h1 id="caption">Women Handicrafts</h1>
          <%String firstName=(String)session.getAttribute("firstName");
        String lastName=(String)session.getAttribute("lastName");
        if(firstName!=null && lastName!=null){
        %>
        <p style="color:blue;text-align:right;font-weight:bold">Welcome <%=firstName%> <%=lastName%> !! <br>
        <a href="Home.jsp">Home</a>
        <br>
        
        <a href="logout.jsp">Logout</a>
        </p>
        <%} %>
        <hr>
        <table>
        <tr>
            <td>
        <div id="categories">
            <h2 style="font-weight:bold">Categories</h2>
            <ul >
                <li id="lst1" >Jwellary</li>
                <li id="lst2">Cloths</li>
                <li id="lst3">Footwares</li>
                <li id="lst4">WallPices</li>
                <li id="lst5">Home Decorators</li>
                 <li id="lst6">Utensils</li>
                   <li id="lst7">Accessories</li>
                
               
            </ul>
        </div>
            </td>
        <td>
       <div id="jwellary" class="maincat">
        <% ArrayList subcatlst=ob.getSubCategories("Jwellary");
        for(Object sc:subcatlst){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
    <div id="cloths" class="maincat">
        <% ArrayList subcatlst1=ob.getSubCategories("Cloths");
        for(Object sc:subcatlst1){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
    <div id="footwares" class="maincat">
        <% ArrayList subcatlst2=ob.getSubCategories("Footwares");
        for(Object sc:subcatlst2){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
    <div id="wallpices" class="maincat">
        <% ArrayList subcatlst3=ob.getSubCategories("Wallpices");
        for(Object sc:subcatlst3){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
     <div id="homedecorators" class="maincat">
        <% ArrayList subcatlst4=ob.getSubCategories("Home Decorators");
        for(Object sc:subcatlst4){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
     <div id="utensils" class="maincat">
        <% ArrayList subcatlst5=ob.getSubCategories("Utensils");
        for(Object sc:subcatlst5){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
    <div id="accessories" class="maincat">
        <% ArrayList subcatlst6=ob.getSubCategories("Accessories");
        for(Object sc:subcatlst6){
        %>  
       <h2 style="text-align:center"> <a href="viewinfo.jsp?subcatlst=<%=sc %>"><%=sc %></a></h2>
        <%} %>
    </div>
    
  </td>
  <td>
<div id="jwellaryimg">
  <img src="images/jwellery.jpg" width="300" height="300">
  </div>
  </td>
     </tr>       
   </table>     
        
    </body>
</html>
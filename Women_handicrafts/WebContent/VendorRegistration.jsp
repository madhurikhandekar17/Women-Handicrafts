<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
			height:520px;
			width:500px;
			background:rgba(0,0,0,0.7);
			margin-top:100px;
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
             h2
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
<body>
 <div id="regform">
            <center>
            <form method="get" action="addvendor.jsp">
                <table cellpadding="5" cellspacing="10">
                    <caption><h2>Vendor Registration form</h2></caption>
                    <tr>
                        <td>Vendor Name: </td>
                        <td><input type="text" name="vname" required/></td>
                    </tr>
                    <tr>
                        <td>Product Name: </td>
                        <td><input type="text" name="pname" required/></td>
                    </tr>
                    <tr>
                        <td>Product Category : </td>
                        <td><select>
                        <option>--Select Category--</option>
                        <option>Jwellary</option>
                         <option>Cloths</option>
                          <option>Footware</option>
                           <option>Wallpices</option>
                            <option>Home Decorators</option>
                             <option>Utensils</option>
                              <option>Accessories</option>
                        </select>
                      <!--   <input type="text" name="category" required /> --> 
                           
                    </tr>
                     <tr>
                        <td>Product Details: </td>
                       <td><textarea name="details" ></textarea></td>
                    </tr>
                     <tr>
                        <td>Vendor Address: </td>
                        <td><textarea name="address" ></textarea></td>
                    </tr>
                     <tr>
                        <td>Contact No: </td>
                        <td><input type="text" name="contact" required/></td>
                    </tr>
                    
                    <tr>
						<td>Upload Images:</td><td> <input type="file" name="pic1" />		</td>
					</tr>
			
                    <tr><td><input type="submit" value="Register" id="b1" class="btn"></td>
                        <td><input type="reset" value="Reset" id="b2" class="btn"></td>
                    </tr>
                </table>
            </form>
            </center>
        </div>
    </body>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Genpact Quiz Portal</title>
<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style1.css" rel='stylesheet' type='text/css' />

<!--start-smoth-scrolling-->
</head>
<body>

	<!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="head">
			<div class="logo">
				<a href="index.html"><img src="images/logo.png" alt="" /></a>
			</div>
			<div class="navigation">
				 <span class="menu"></span> 
				
			</div>
				<div class="clearfix"></div>
			</div>
			</div>
		</div>	
		
		<div class="container">
		
		<div class="distracted">
		<div class="alert alert-info" role="alert">
					<strong>Well done!</strong> You successfully Completed The Registration
			   </div>
			  
			   <br><br>
<%
				String Email = (String)session.getAttribute("Email");
				String DOB = (String)session.getAttribute("DOB");%> 
				   <div class="well">
			
				<center><h3 class="ghj">Username : </h3><h5 class="ghj"><%=Email%></h5></center><br><br>
				<center><h3 class="ghj">Password : </h3><h5 class="ghj"><%=DOB%></h5></center>
				
				
				
				
		    </div>
		
		</div>
		
		  <form method="post" action="First_screen.jsp" >
		  <div class="submit-btn">

					<strong><input type="submit" value="Return To Login screen"></strong>
						</div>
					</form>
		

</div>		
		
</form>
	
</body>
</html>
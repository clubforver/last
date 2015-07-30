
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<title>Genpact Quiz Portal</title>
<head>
    <title>Upload</title>
    <link href="Admin_css/bootstrap-min.css" rel="stylesheet">
    <link href="Admin_css/simple-sidebar.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Admin_css/style.css">
	<link rel="stylesheet" type="text/css" href="Admin_css/table.css">
</head>
<body>
    <div id="wrapper">
        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li class="sidebar-brand">
                    <a href="hello.html">
                     <h1>   Admin Panel</h1>
                    </a>
                </li>
                <li>
                    <a href="Show_account.jsp">Accounts</a>
                </li>
                
                <li>
                    <a href="question_upload.jsp">Upload Question</a>
                </li>
                <li>
                    <a href="Show_account.jsp">Result</a>
                </li>
                
            </ul>
        </div>
       
<%
    
    
    Class.forName("com.mysql.jdbc.Driver");
  	String url ="jdbc:mysql://localhost/Genpact_Quiz";
	String users="root";
	String password ="";
	  
	Connection con = DriverManager.getConnection(url, users, password);
    Statement st = con.createStatement();
    //ResultSet rs;
    ResultSet rs = st.executeQuery("Select * from account");
    %>
    
     

    
    
	<div id="header">
	<div id="page-content-wrapper">
            <div class="container-fluid">
                <div class="row">
<div class="form-style-5">
<form method="post" action="writing_xml.jsp">

<legend><span class="number">1</span> Result</legend>
<table cellspacing='4'> <!-- cellspacing='0' is important, must stay -->
	<tr><th>Selection</th><th>Username</th><th>Password</th><th>Domain</th></tr><!-- Table Header -->
    <%
    while(rs.next()){
    
    %>
    
     <tr><td><input type="checkbox" value="<%=rs.getString(1)%>" name="delete"></td> 
     <td><%= rs.getString(1) %></td>
     <td><%= rs.getString(2) %></td>
     <td><%= rs.getString(12) %></td>
     </tr><!-- Table Row -->
    
  <%} %>  


</table>
</form>
</div>
</div>
 </div>
        </div>
    </div>

   

</body>

</html>


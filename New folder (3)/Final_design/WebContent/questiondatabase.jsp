<%@ page import ="java.sql.*" %>
<%@ page import ="java.net.InetAddress" %>
<%

	
	String File_Name = request.getParameter("File_Name");
    String Exam_Duration = request.getParameter("Exam_Duration");
    String Number_Of_Question = request.getParameter("Number_Of_Question");
    
    
    
    Class.forName("com.mysql.jdbc.Driver");
  	String url ="jdbc:mysql://localhost/Genpact_Quiz";
	String users="root";
	String password ="";
	  
	Connection con = DriverManager.getConnection(url, users, password);
    Statement st = con.createStatement();
    //ResultSet rs;
  int flag=1;
int i = st.executeUpdate("insert into question(File_name,Time,TtlQno) values('" + File_Name + "','" + Exam_Duration + "','" + Number_Of_Question + "')");


    if (i > 0) {
        //session.setAttribute("userid", user);
        
        
        out.print("Successfull Uploaded!"+"<a href='Show_account.jsp'>Go to Admin panel</a>");
    } else {
        response.sendRedirect("index.jsp");
    } 
     
    con.close();
%>
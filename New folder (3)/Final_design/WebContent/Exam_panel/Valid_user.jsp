<%@ page import ="java.sql.*" %>
<%
    String user = request.getParameter("Username");    
    String pwd = request.getParameter("password");
  String Domain;
    
    
    Class.forName("com.mysql.jdbc.Driver");
  	String url ="jdbc:mysql://localhost/genpact_quiz";
	String users="root";
	String password ="";
	  
	Connection con = DriverManager.getConnection(url, users, password);
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from account where Username ='" + user + "' and Password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", user);
             Domain = rs.getString(12) ;//for which  test adobt by user
            //System.out.print(Domain);
             session.setAttribute("Domain", Domain);
      		 response.sendRedirect("Rules and Regulation.jsp"); 
      /*   out.println("Invalidss password <a href='index.jsp'>try again</a>"); */
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
    

%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="javax.xml.parsers.DocumentBuilderFactory,java.util.*,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*" errorPage="" %><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import ="java.sql.*" %>

<%

String Domain = (String)session.getAttribute("Domain");
String Total_Time;
String Total_question;
Class.forName("com.mysql.jdbc.Driver");
String url ="jdbc:mysql://localhost/genpact_quiz";
String users="root";
String password ="";
  
Connection con = DriverManager.getConnection(url, users, password);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("Select * from question where File_name='"+Domain+"'");

while(rs.next()){
	Total_Time =	rs.getString(2);
	Total_question = rs.getString(3);	
	
	
	session.setAttribute("Total_Time", Total_Time);
	session.setAttribute("Total_question", Total_question);
	 
} 


DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
DocumentBuilder db = dbf.newDocumentBuilder();
//Document doc = db.parse(""+Domain+".xml");
Document doc = db.parse("C:\\Users\\ByteBreaker.in\\workspace\\Final_design\\WebContent\\Exam_panel\\"+Domain+".xml");

NodeList QuestionNo = doc.getElementsByTagName("QuestionNo");
NodeList Question = doc.getElementsByTagName("Question");
NodeList choiceA = doc.getElementsByTagName("choiceA");
NodeList choiceB = doc.getElementsByTagName("choiceB");
NodeList choiceC = doc.getElementsByTagName("choiceC");
NodeList choiceD = doc.getElementsByTagName("choiceD");
NodeList correct = doc.getElementsByTagName("correct");
%>
<%!
public static int[] RandomizeArray(int a, int b){
	Random rgen = new Random();  // Random number generator		
	int size = b-a+1;
	int[] array = new int[size];
	
	for(int i=0; i< size; i++){
		array[i] = a+i;
		//System.out.println(array[i] );
	}

	for (int i=0; i<array.length; i++) {
	    int randomPosition = rgen.nextInt(array.length);
	    int temp = array[i];
	    array[i] = array[randomPosition];
	    array[randomPosition] = temp;
	}

	//for(int s: array)
	//	System.out.println(s);

	return array;
}
%>
<%
//int c[] =RandomizeArray(1, 10);
String arr = "1";

/*
String strings[] = new String[c.length];
for(int i = 0; i<c.length;++i)
{
     strings[i] = Integer.toString(c[i]);
}
System.out.println(strings[0]);*/
//int counter = 0;
//String stringA[] = {"1","2","3","4"};
//for(int s: c)
	//System.out.println(s);
 %>
 
 
 
 
 
 
<html>
<head>
<link rel="stylesheet" type="text/css" href="try1.css"> 
<link rel="stylesheet" type="text/css" href="style.css"> 
<style type="text/css"> 
.styled-button-5 {
	background-color:008B8B;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:18px;
	line-height:30px;
	border-radius:20px;
	-webkit-border-radius:20px;
	-moz-border-radius:20px;
	border:0;
	text-shadow:#C17C3A 0 -1px 0;
	width:120px;
	height:32px
}                
</style>

<script type="text/javascript">
function display_c(start){
	
window.start = parseFloat(start);
var end = 0 // change this to stop the counter at a higher value
var refresh=1000; // Refresh rate in milli seconds
if(window.start >= end ){
mytime=setTimeout('display_ct()',refresh)
}
else {alert("Time Over ");}
}
 
function display_ct() {
// Calculate the number of days left
var days=Math.floor(window.start / 86400);
// After deducting the days calculate the number of hours left
var hours = Math.floor((window.start - (days * 86400 ))/3600)
// After days and hours , how many minutes are left
var minutes = Math.floor((window.start - (days * 86400 ) - (hours *3600 ))/60)
// Finally how many seconds left after removing days, hours and minutes.
var secs = Math.floor((window.start - (days * 86400 ) - (hours *3600 ) - (minutes*60)))
m=secs;
sec=secs;
minute=minutes;
hour=hours;
//var x = window.start + "(" + days + " Days " + hours + " Hours " + minutes + " Minutes and " + secs + " Secondes " + ")";
var x = "Time Remaining :("  + hours + " Hours : " + minutes + " Minutes :	 " + secs + " Seconds"+")";
//var y ="sas"; 
//window.location.replace("j.jsp?mess="+y);  
document.getElementById('ct').innerHTML = x;
window.start= window.start- 1;
 
tt=display_c(window.start);

}

function get(){ 
	//var choice = document.getElementById('choice').value;
	//choice="";
	choice ="s";
	if(document.frm.choice[0].checked==true)
		choice=document.frm.choice[0].value;
	if(document.frm.choice[1].checked==true)
		choice=document.frm.choice[1].value;
	if(document.frm.choice[2].checked==true)
		choice=document.frm.choice[2].value;
	if(document.frm.choice[3].checked==true)
		choice=document.frm.choice[3].value;
	//alert("Selected HouseHold(s) : "+res);
	window.location.replace("j.jsp?hours="+hour+"&minutes="+minute+"&secs="+sec+"&choice="+choice);
//	window.location.replace("j.jsp?mess="+m);
	} 
	
</script>


<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style1.css" rel='stylesheet' type='text/css' />

<!---- start-smoth-scrolling---->
<!-- <script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script> -->

<!--start-smoth-scrolling-->
</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<div class="container">
			<div class="head">
			<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=""  height="65px" width="410"/></a>
			</div>
			<div class="navigation">
				 <span class="menu"></span> 
					<ul class="navig">
				<!--		<li><a href="index.html"  class="active hvr-bounce-to-bottom">Home</a></li>
						<li><a href="about.html" class="hvr-bounce-to-bottom">About</a></li>
						<li><a href="services.html" class="hvr-bounce-to-bottom">Services</a></li>
						<li><a href="typo.html" class="hvr-bounce-to-bottom">Typo</a></li>
						<li><a href="contact.html" class="hvr-bounce-to-bottom">Contact</a></li>-->
					</ul>
			</div>
				<div class="clearfix"></div>
			</div>
			</div>
		</div>	

	<%
	String timer = (String)session.getAttribute("Total_Time");
	int inttimer = Integer.parseInt(timer);
Integer Fresh =inttimer*60;
String sec = (String)session.getAttribute("secs");
String hour = (String)session.getAttribute("hours");
String minute = (String)session.getAttribute("minutes");
if (sec == null) {
}
else{

//String Fresh = (String)session.getAttribute("Fresh");
int MINUTES = Integer.parseInt(minute);
int HOUR = Integer.parseInt(hour);
int SEC = Integer.parseInt(sec);

//Integer
Fresh = (Integer)session.getAttribute("Fresh");
//int Freshs = Integer.parseInt(Fresh);
/* 		out.println(HOUR);
		out.println(MINUTES);
		out.println(SEC);
		out.println(Fresh);
 */
}
%>


<title>Read Xml Data</title>
</head>
 <div class="container">
<%

Integer sequence=(Integer)session.getAttribute("counters");
int[] random = (int[]) session.getAttribute("random");
String Total_questions = (String)session.getAttribute("Total_question");
int intTotal_question = Integer.parseInt(Total_questions);  
//System.out.print(sequence);
//~~~~~~~~~~~~~~~~~~~~~~~~
 
 		if(sequence>intTotal_question-2){
 			response.sendRedirect("Finish.jsp");
			return;
 		}
//~~~~~~~~~~~~~~~~~~~~~~	~~~~~~

/* 		for(int i=0;i<=9;i++){
		out.print("hello"+random[sequence]);
		}
 */
//String str = Integer.toString(sequence);
//String str = Integer.toString(random[i]);
//randon[sequence];

		/* out.print("Second "+sequence); */

//out.print("Second "+str);
//int exit =5;
//int exitCondition =sequence;
//System.out.print(exitCondition);
%>


<body onload=display_c(<%=Fresh%>);>


  
<!-- <form method="get"> -->
<form name="frm" action="j.jsp">
<table >
<font size="3" color="Black" face="arial black"><br>

Current Question : <%=sequence+1%>/<%=intTotal_question-2 %>
</font>

<div style="float: right; width: 500px; margin: 5px; padding: 5px;">
<span id='ct'></span><br>
<!--  <span id='ct' style="background-color: #FFFF00"></span><br>-->
</div>

<%

for(int i=0;i<=QuestionNo.getLength()-1;i++)
{
	//counter++;
	String str = Integer.toString(random[sequence]);
	if(str.equals(QuestionNo.item(i).getFirstChild().getNodeValue()))
		//if(user != useri)
	{
%>



 <div class="distracted">
			
				   <div class="well">
					
<%--  <%= QuestionNo.item(i).getFirstChild().getNodeValue()%> --%>
<p style="margin-top: 1em">
<font size="6" color="Black" face="arial black">
<%= Question.item(i).getFirstChild().getNodeValue()%>
<br><br>
 </font>
  </p>
  <font size="3" color="Black" face="comic sans MS">
   
   &nbsp;  <input type="radio" name="choice" id="choice" value="A"> &nbsp;<%= choiceA.item(i).getFirstChild().getNodeValue()%>
    <br><br>

   &nbsp; <input type="radio" name="choice"  id="choice" value="B"> &nbsp; <%= choiceB.item(i).getFirstChild().getNodeValue()%>
    <br><br>
   &nbsp; <input type="radio" name="choice"  id="choice" value="C">  &nbsp; <%= choiceC.item(i).getFirstChild().getNodeValue()%>
    <br><br>
  &nbsp; <input type="radio" name="choice"   id="choice" value="D">   &nbsp; <%= choiceD.item(i).getFirstChild().getNodeValue()%>
    <br><br>
    </font>
 <%-- <%= correct.item(i).getFirstChild().getNodeValue()%> --%>
  
				  
		    </div>
		
		</div>	
</div>


<%
}
}
//}	//exit conditioin
%>
<!-- <input type="submit" value="Query"/> -->
</table>
</form>
<%

  %>
  <!-- <a href="second.jsp">second jsp page</a> -->
<div style="float: right; width: 170px; margin: 5px; padding: 5px;">
 <input type="submit" onclick="get();" class="styled-button-5"  value="Next">
 </div> 
 

</body>
</html>
<%@ page contentType="text/html; charset=utf-8" language="java" 
import="java.io.BufferedReader,java.io.File,java.io.FileReader,java.io.BufferedReader,java.io.FileReader,java.io.File,java.io.FileWriter,java.util.Scanner,java.io.IOException,org.jdom2.Attribute,org.jdom2.Document,org.jdom2.Element,org.jdom2.output.Format,org.jdom2.output.XMLOutputter" errorPage="" %>

  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

int QNO;
int i=0;
int I=0;
int K=0;
String data[] = new String[700];
Element company = new Element("xmldata");
Document doc = new Document(company); 
Scanner in = new Scanner(System.in);
/* System.out.println("Enter Number of question");
QNO = in.nextInt(); */

Element[] staff = new Element[70];

//for(i=0;i<QNO;i++){
String QuestionNo = Integer.toString(i+1);

String line = "";
File file = new File("D:\\try.txt");
FileReader fr= new FileReader(file);
BufferedReader br = new BufferedReader(fr);
while((line = br.readLine()) != null){
	data =  line.split("`");


I=0;
		
		staff[i] = new Element("student");
		staff[i].addContent(new Element("QuestionNo").setText(data[I++]));
		staff[i].addContent(new Element("Question").setText(data[I++]));
		staff[i].addContent(new Element("choiceA").setText(data[I++]));
		staff[i].addContent(new Element("choiceB").setText(data[I++]));
		staff[i].addContent(new Element("choiceC").setText(data[I++]));
		staff[i].addContent(new Element("choiceD").setText(data[I++]));
		staff[i].addContent(new Element("Correct").setText(data[I]));
		doc.getRootElement().addContent(staff[i]);
		i++;

}	


br.close();

System.out.print("hello");

in.close();
XMLOutputter xmlOutput = new XMLOutputter();


xmlOutput.setFormat(Format.getPrettyFormat());
xmlOutput.output(doc, new FileWriter("d:\\fileSss.xml"));

System.out.println("File Saved!");

%>
</body>
</html>

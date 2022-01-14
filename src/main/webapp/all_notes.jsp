<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>	
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
	</div>
	<%
	Session session2 = FactoryProvider.getFactory().openSession();
	     Query query = session2.createQuery("from Note");	
	     List<Note> notes1= query.list();
	 for(Note note: notes1){
		 %>
		<div class="card mt-3">
  <img class="card-img-top m-4 mx-auto"  style="max-width:100px;" src="img/notepad.png" alt="Card image cap">
  <div class="card-body">
    <div class="container text-center">
    <h5 class="card-title"><%=note.getTitle()%></h5>
    <p class="card-text"><%=note.getContent() %></p>
    <p class="text-primary"><b><%=note.getAddedDate()%></b></p>
    </div>
    <div class="container text-center">
    <a href="DeleteServlet?note_id=<%=note.getId()%>" class="btn btn-danger">Delete</a>
    <a href="edit.jsp?note_id=<%=note.getId()%>" class="btn btn-primary">Update</a>
    </div>
  </div>
</div> 
			<% 	 
	 }
	session2.close();
	%>
</body>
</html>
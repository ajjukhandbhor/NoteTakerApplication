<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note" %>
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
	int noteId = Integer.parseInt(request.getParameter("note_id").trim());
	

	Session s = FactoryProvider.getFactory().openSession();
	
	Note note = s.get(Note.class, noteId);
	Transaction tx = s.beginTransaction();
	
	%>
	<form action="UpdateServlet" method="post">
	
	<input value="<%=note.getId()%>" name="noteId" type="hidden">
		<div class="form-group">
			<label for="exampleInputEmail1">Note Title</label>
			 <input required="required"
			    name="title"
				type="text" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter here"
				value="<%=note.getTitle()%>"
				> 
		</div>
		<div class="form-group">
			<label for="content">Note Content</label> 
			<textarea 
			name="content"
			id="content" rows="10" cols="20" placeholder="Enter your content here"
			 class="form-control"required="required"
			 style="height: 300px;">
			 <%=note.getContent()%>
			 </textarea>
		</div>
		<div class="container text-center">
		<button type="submit" class="btn btn-primary">Save your Modify Note</button>
		</div>
	</form>
</body>	
</html>
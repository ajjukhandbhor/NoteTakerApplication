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
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
	</div>
	<h1>Please Fill your note detail</h1>
	
	<!-- This is Add Form -->
	<!-- <div align="center"> -->
	<form action="SaveNoteServlet" method="post">
		<div class="form-group">
			<label for="exampleInputEmail1">Note Title</label>
			 <input required="required"
			    name="title"
				type="text" class="form-control" id="title"
				aria-describedby="emailHelp" placeholder="Enter here"> 
		</div>
		<div class="form-group">
			<label for="content">Note Content</label> 
			<textarea 
			name="content"
			id="content" rows="10" cols="20" placeholder="Enter your content here"
			 class="form-control"required="required"
			 style="height: 300px;"></textarea>
		</div>
		<div class="container text-center">
		<button type="submit" class="btn btn-primary">Add</button>
		</div>
	</form>
	
  <!--  </div> -->
</body>
</html>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <title>Hello World!</title>
      <%@include file="all_js_css.jsp" %>       
  <body>
    <div class="container-fluid p-0 m-0 align="center">
    <%@include file="navbar.jsp" %>       
    <br>
    <div class="card my-5"> 
    <img alt="" src="img/notepad.png" class="img-fluid mx-auto" style="max-width:400px; ">
    <h1 class="text-primary text-uppercase text-center">Start Talking your notes</h1>
    <div class="container text-center">
    <button onclick="add_notes.jsp" class="btn btn-outline-primary text-center">Start here</a></button>
    </div>
    </div>
    </div>
    
  </body>
</html>
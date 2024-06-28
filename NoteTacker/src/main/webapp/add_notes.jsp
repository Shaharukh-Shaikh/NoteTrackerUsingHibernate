<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add notes</title>
<%@include file="all_js_css.jsp" %>
    
</head>
<body>
	<div class="container">
    	
    	<%@include file="navbar.jsp" %>
    <h1>please fill your note details</h1><br>
    
    <form action="SaveNoteServlet" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">Note Title</label>
    <input required 
    type="text" 
    class="form-control" 
    id="title"
    name="title"
    placeholder="Enter Note Title" 
    aria-describedby="emailHelp"/>
    
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">Note Content</label>
    <textarea required
    name="content"
    id="content" 
    style="height:300px"
    placeholder="Enter Your Content Here"
    class="form-control"></textarea>
  </div>
 
  <div class="container text-center" >
  <button type="submit" class="btn btn-primary">Add Note</button>
  </div>
</form>
    </div>
</body>
</html>
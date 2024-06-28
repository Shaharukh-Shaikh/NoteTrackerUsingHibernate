<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>
<title>edit</title>
</head>
<body>
	<div class="container">

		<%@include file="navbar.jsp"%>
		<h1>Edit Your Note</h1>
		<br>

		<%
		Session s = FactoryProvider.getFactory().openSession();
		int noteId = Integer.parseInt(request.getParameter("id").trim());
		Note note = (Note) s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="post">
		
		<input value="<%=note.getId()%>" type="hidden" name="noteId"/>
		
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> <input
					required type="text" class="form-control" id="title" name="title"
					placeholder="Enter Note Title" value="<%=note.getTitle()%>"
					aria-describedby="emailHelp" />

			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea required name="content" id="content" style="height: 300px"
					placeholder="Enter Your Content Here"
					class="form-control"> <%=note.getContent()%></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Note</button>
			</div>
		</form>
	</div>
</body>
</html>
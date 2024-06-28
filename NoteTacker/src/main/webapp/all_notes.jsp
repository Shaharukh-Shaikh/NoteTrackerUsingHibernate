<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="all_js_css.jsp"%>

<title>all notes folder</title>
</head>
<body>
	<div class="container">

		<%@include file="navbar.jsp"%>
		<h1>All Notes</h1>
		<br>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();

				Query q = s.createQuery("from Note");
				List<Note> list = q.list();
				for (Note note : list) {
			
				%>
				<div class="card mt-3" >
					<img style="max-width: 100px" src="img/notes.png" class="card-img-top m-4" alt="...">
					<div class="card-body">
						<h5 class="card-title"><%= note.getTitle() %></h5>
						<p class="card-text"><%=note.getContent() %></p>
						<a href="DeleteServlet?id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
						<a href="edit.jsp?id=<%=note.getId() %>" class="btn btn-primary ml-2">Edit</a>
					</div>
				</div>

				<%
				}

				s.close();
				%>


			</div>
		</div>


	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Users</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
	<div class="container">
	<h1>Liste des utilisateurs</h1>
		<table class="table">
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nom</th>
				<th scope="col">Prenom</th>
				<th scope="col">Salaire</th>
			</tr>
			<c:forEach items="${ users }" var="u">
				<tr>
					<td><c:out value="${ u.id }"></c:out></td>
					<td><c:out value="${ u.firstName }"></c:out></td>
					<td><c:out value="${ u.lastName }"></c:out></td>
					<td><c:out value="${ u.salary }"></c:out></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
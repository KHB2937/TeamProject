<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String id = request.getParameter("id");
%>
<html>
<head>

	<title>게시판</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- 부트스트랩 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

	<!-- 커스텀 CSS -->
	<style>
		.navbar-custom {
			background-color: #343a40 !important;
		}

		.navbar-custom .navbar-brand {
			color: white !important;
		}

		.navbar-custom .navbar-nav .nav-link {
			color: white !important;
		}

		.form-group label {
			color: #343a40;
			font-weight: bold;
		}

		.btn-primary-custom {
			background-color: #343a40 !important;
			border-color: #343a40 !important;
		}

		.btn-primary-custom:hover {
			background-color: white !important;
			color: #343a40 !important;
		}
	</style>

</head>
<body>

<!-- navbar -->
<nav class="navbar navbar-expand-md navbar-custom">
	<a class="navbar-brand" href="#">게시판</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item">
				<a class="nav-link" href="Boardform.jsp">글쓰기</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="read">글목록</a>
			</li>
		</ul>
	</div>
</nav>

<div class="container mt-4">
	<h2>글쓰기</h2>
    <form action="update" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        <div class="form-group">
            <label for="title">제목:</label>
            <input type="text" class="form-control" id="title" placeholder="제목을 입력하세요" name="title">
        </div>
        <div class="form-group">
            <label for="content">내용:</label>
            <textarea class="form-control" id="content" placeholder="내용을 입력하세요" name="content" rows="5"></textarea>
        </div>
        <button type="submit" class="btn btn-primary btn-primary-custom">수정하기</button>
    </form>
</div>

<!-- 부트스트랩 JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>

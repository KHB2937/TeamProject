<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import= "org.example.Board" %>
<%@ page import="javax.persistence.*" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>게시판</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<a class="navbar-brand" href="boardList.jsp">게시판</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="collapsibleNavbar">
		<ul class="navbar-nav">
			<li class="nav-item">
				<a class="nav-link" href="Boardform.jsp">글쓰기</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="index.jsp">홈</a>
			</li>
		</ul>
	</div>
</nav>

    <div class="container mt-3">
       <h1>상세보기</h1>
       <table class="table table-bordered table-hover mt-3">
          <thead>
             <tr>
                <th>번호</th>
                <th>제목</th>
                <th>내용</th>
             </tr>
          </thead>
            <tbody>
                <%
                Board post = (Board) request.getAttribute("board");
                if (post != null) {
                %>
                    <tr>
                        <td><%= post.getbId() %></td>
                        <td><%= post.getTitle() %></td>
                        <td><%= post.getContent() %></td>
                    </tr>
                <% } else { %>
                    <tr>
                        <td colspan="3" class="text-center">게시물이 없습니다.</td>
                    </tr>
                <% } %>
            </tbody>
       </table>



    <h2> 댓글 달기 </h2>
    <form action="comment" method="post">
    		<input type="text" name="author_id" placeholder="작성자 이름을 넣으세요">
    		<input type="text" name="comment" placeholder="코멘트를 작성하세요">
    		<button type="submit">댓글 작성하기</button>
    </form>
</div>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.Board" %>
<%@ page import="javax.persistence.*" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <title>게시판</title>
    <!-- Bootstrap CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-3">
       <h1>게시판</h1>
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
                List<Board> postList = (List<Board>) request.getAttribute("postList");
                 if (postList != null && !postList.isEmpty()) {
                 for (Board post : postList) {
              %>
                <tr>
                   <td><%= post.getbId() %></td>
                   <td><%= post.getTitle() %></td>
                   <td><%= post.getContent() %></td>
                </tr>
             <%
                }
             } else {
             %>
                <tr>
                   <td colspan="3" class="text-center">게시물이 없습니다.</td>
                </tr>
             <%
             }
             %>
          </tbody>
       </table>
       <button type="button" class="btn btn-primary fixed-bottom m-3" onclick="location.href='Boardform.jsp'">작성하기</button>
    </div>
    <!-- Bootstrap CDN -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

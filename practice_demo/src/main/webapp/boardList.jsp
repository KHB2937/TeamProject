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
    <style>
        button.btn:hover {
            background-color: #ffc107;
            color: #000;
            border: none;
            border-radius: 0;
        }

        button.btn {
            background-color: #000;
            color: #fff;
            border-color: #000;
        }

        h1 {
            text-align: center;
        }
        .navbar-brand:hover {
          color: #ffc107 !important;
        }
        .nav-link:hover {
          color: #ffc107 !important;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-expand-md bg-dark navbar-dark justify-content-end">
    <a class="navbar-brand" href="read">게시판</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav ml-auto">
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
       <h1>게시판</h1>
       <table class="table table-bordered table-hover mt-3">
          <thead>
             <tr>
                <th>번호</th>
                <th>제목</th>
                <th>내용</th>
                <th>수정</th>
                <th>삭제</th>
                <th>상세보기</th>
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
                   <td>
                      <form action="updateForm.jsp" method="post">
                        <input type="hidden" name="id" value="<%= post.getbId() %>">
                        <button type="submit" class="btn" >수정하기</button>
                      </form>
                    </td>
                     <td>
                       <form action="delete" method="post">
                         <input type="hidden" name="id" value="<%= post.getbId() %>">
                         <button type="submit" class="btn">삭제하기</button>
                       </form>
                     </td>
                     <td>
                        <form action="detail" method="post">
                          <input type="hidden" name="id" value="<%= post.getbId() %>">
                          <button  type="submit" class="btn" >상세보기</button>
                        </form>
                      </td>
                   </form>

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
    </div>


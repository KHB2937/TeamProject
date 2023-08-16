<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.example.model.ReplyDAO, org.example.model.ReplyVO" %>
<!DOCTYPE html>
<html>
<head>
  <title>댓글 작성</title>
</head>
<body>
  <%
    request.setCharacterEncoding("UTF-8");

    int boardId = Integer.parseInt(request.getParameter("boardId"));
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");

    ReplyDAO replyDAO = new ReplyDAO();
    ReplyVO replyVO = new ReplyVO();
    replyVO.setBoardId(boardId);
    replyVO.setWriter(writer);
    replyVO.setContent(content);

    replyDAO.insertReply(replyVO);
  %>
  <h2>댓글이 작성되었습니다.</h2>
  <a href="boardView.jsp?id=${boardId}">게시글 보기 페이지로 이동하기</a>
</body>
</html>

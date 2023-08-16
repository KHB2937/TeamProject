<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.io.*" %>
<%@ page import="board.*" %>
<%@ page import="reply.*" %>
<%@ page import="member.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board</title>
</head>
<body>
    <h1>Board</h1>
    <%
        BoardDAO boardDAO = new BoardDAO();
        ReplyDAO replyDAO = new ReplyDAO();
        MemberDAO memberDAO = new MemberDAO();

        String action = request.getParameter("action");
        int id = Integer.parseInt(request.getParameter("id"));
        int boardId = Integer.parseInt(request.getParameter("boardId"));

        if (action == null) {
            List<BoardVO> boardList = boardDAO.selectAll();
    %>
            <table>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <tbody>
                <% for (BoardVO board : boardList) { %>
                    <tr>
                        <td><%= board.getId() %></td>
                        <td><a href="?action=view&id=<%= board.getId() %>"><%= board.getTitle() %></a></td>
                        <td><%= board.getWriter() %></td>
                        <td><%= board.getRegdate() %></td>
                    </tr>
                <% } %>
                </tbody>
            </table>
            <a href="?action=write">글쓰기</a>
    <% } else if (action.equals("view")) {
            BoardVO board = boardDAO.selectOne(id);
            List<ReplyVO> replyList = replyDAO.selectAllReply(id);
    %>
            <h2><%= board.getTitle() %></h2>
            <p><%= board.getContent() %></p>
            <p><%= board.getWriter() %></p>
            <p><%= board.getRegdate() %></p>
            <a href="?action=modify&id=<%= board.getId() %>">수정</a>
            <a href="?action=delete&id=<%= board.getId() %>">삭제</a>
            <hr>
            <ul>
            <% for (ReplyVO reply : replyList) { %>
                <li>
                    <h4><%= reply.getWriter() %></h4>
                    <p><%= reply.getContent() %></p>
                    <p><%= reply.getRegdate() %></p>
                    <a href="?action=modifyReply&id=<%= reply.getId() %>">수정</a>
                    <a href="?action=deleteReply&id=<%= reply.getId() %>">삭제</a>
                </li>
            <% } %>
            </ul>
            <form action="board.jsp?action=addReply"
                method="post">
                    <input type="hidden" name="boardId" value="<%= board.getId() %>">
                    <p>댓글 작성</p>
                    <p><textarea name="content"></textarea></p>
                    <p><input type="text" name="writer" placeholder="작성자"></p>
                    <p><input type="submit" value="작성"></p>
                </form>
                <a href="?">목록으로</a>
        <% } else if (action.equals("write")) {
                String writer = request.getParameter("writer");
                String title = request.getParameter("title");
                String content = request.getParameter("content");

                BoardVO board = new BoardVO();
                board.setWriter(writer);
                board.setTitle(title);
                board.setContent(content);

                boardDAO.insert(board);
        %>
                <p>글이 작성되었습니다.</p>
                <a href="?">목록으로</a>
        <% } else if (action.equals("modify")) {
                BoardVO board = boardDAO.selectOne(id);
        %>
                <h2>글 수정</h2>
                <form action="board.jsp?action=update" method="post">
                    <input type="hidden" name="id" value="<%= board.getId() %>">
                    <p><input type="text" name="writer" value="<%= board.getWriter() %>"></p>
                    <p><input type="text" name="title" value="<%= board.getTitle() %>"></p>
                    <p><textarea name="content"><%= board.getContent() %></textarea></p>
                    <p><input type="submit" value="수정"></p>
                </form>
                <a href="?">목록으로</a>
        <% } else if (action.equals("update")) {
                int boardId = Integer.parseInt(request.getParameter("id"));
                String writer = request.getParameter("writer");
                String title = request.getParameter("title");
                String content = request.getParameter("content");

                BoardVO board = new BoardVO();
                board.setId(boardId);
                board.setWriter(writer);
                board.setTitle(title);
                board.setContent(content);

                boardDAO.update(board);
        %>
                <p>글이 수정되었습니다.</p>
                <a href="?action=view&id=<%= boardId %>">글 보기</a>
        <% } else if (action.equals("delete")) {
                boardDAO.delete(id);
                replyDAO.deleteAll(id);
        %>
                <p>글이 삭제되었습니다.</p>
                <a href="?">목록으로</a>
        <% } else if (action.equals("addReply")) {
                int boardId = Integer.parseInt(request.getParameter("boardId"));
                String writer = request.getParameter("writer");
                String content = request.getParameter("content");

                ReplyVO reply = new ReplyVO();
                reply.setBoardId(boardId);
                reply.setWriter(writer);
                reply.setContent(content);

                replyDAO.insert(reply);
        %>
                <p>댓글이 작성되었습니다.</p>
                <a href="?action=view&id=<%= boardId %>">글 보기</a>
        <% } else if (action.equals("modifyReply")) {
                ReplyVO reply = replyDAO.selectOne(Integer.parseInt(request.getParameter("id")));
        %>
                <h2>댓글 수정</h2>
                <form action="board.jsp?action=updateReply
                method="post">
                    <input type="hidden" name="id" value="<%= reply.getId() %>">
                    <input type="hidden" name="boardId" value="<%= reply.getBoardId() %>">
                    <p><input type="text" name="writer" value="<%= reply.getWriter() %>"></p>
                    <p><textarea name="content"><%= reply.getContent() %></textarea></p>
                    <p><input type="submit" value="수정"></p>
                </form>
                <a href="?action=view&id=<%= reply.getBoardId() %>">댓글 보기</a>
        <% } else if (action.equals("updateReply")) {
                int replyId = Integer.parseInt(request.getParameter("id"));
                int boardId = Integer.parseInt(request.getParameter("boardId"));
                String writer = request.getParameter("writer");
                String content = request.getParameter("content");

                ReplyVO reply = new ReplyVO();
                reply.setId(replyId);
                reply.setBoardId(boardId);
                reply.setWriter(writer);
                reply.setContent(content);

                replyDAO.update(reply);
        %>
                <p>댓글이 수정되었습니다.</p>
                <a href="?action=view&id=<%= boardId %>">댓글 보기</a>
        <% } else if (action.equals("deleteReply")) {
                int replyId = Integer.parseInt(request.getParameter("id"));
                int boardId = replyDAO.selectOne(replyId).getBoardId();

                replyDAO.delete(replyId);
        %>
                <p>댓글이 삭제되었습니다.</p>
                <a href="?action=view&id=<%= boardId %>">댓글 보기</a>
        <% } else if (action.equals("signup")) {
                String name = request.getParameter("name");
                String id = request.getParameter("id");
                String password = request.getParameter("password");
                String phone = request.getParameter("phone");
                String location = request.getParameter("location");
                String dogName = request.getParameter("dogName");
                String dogBreed = request.getParameter("dogBreed");
                String dogSize = request.getParameter("dogSize");
                String walkingTime = request.getParameter("walkingTime");

                MemberVO member = new MemberVO();
                member.setName(name);
                member.setId(id);
                member.setPassword(password);
                member.setPhone(phone);
                member.setLocation(location);
                member.setDogName(dogName);
                member.setDogBreed(dogBreed);
                member.setDogSize(dogSize);
                member.setWalkingTime(walkingTime);

                memberDAO.insert(member);
        %>
                <p>회원가입이 완료되었습니다.</p>
                <a href="?">목록으로</a>
        <% } %>
    </body>
    </html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // 1. Mock Data (수정할 기존 데이터)
    String id = request.getParameter("id");

    // DB에서 id값을 기준으로 기존 데이터를 1건 조회했다고 "가정"
    Map<String, String> post = new HashMap<>();
    post.put("id", id);
    post.put("title", "ID " + id + "번 글의 기존 Mock 제목");
    post.put("author", "기존 작성자 " + id);
    post.put("content", "ID " + id + "번 글의 기존 Mock 내용입니다.\n" +
            "이 내용을 수정할 수 있습니다.");
%>

<html>
<head>
    <title>게시글 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container mt-4" style="max-width: 700px;">
    <h1 class="text-center mb-4">게시글 수정 (Update)</h1>

    <form action="edit_ok.jsp" method="post">

        <input type="hidden" name="id" value="<%= post.get("id") %>">

        <div class="mb-3">
            <label for="author" class="form-label">작성자 (author)</label>
            <input type="text" class="form-control" id="author" name="author" value="<%= post.get("author") %>" required>
        </div>

        <div class="mb-3">
            <label for="title" class="form-label">제목 (title)</label>
            <input type="text" class="form-control" id="title" name="title" value="<%= post.get("title") %>" required>
        </div>

        <div class="mb-3">
            <label for="content" class="form-label">내용 (content)</label>
            <textarea class="form-control" id="content" name="content" rows="10"><%= post.get("content") %></textarea>
        </div>

        <div class="text-center">
            <button type="submit" class="btn btn-success">수정 완료</button>
            <a href="list.jsp" class="btn btn-secondary">목록으로</a>
        </div>
    </form>

</div>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // 1. Mock Data (상세보기)
    String id = request.getParameter("id");

    // DB에서 id값을 기준으로 데이터를 1건 조회했다고 "가정"
    Map<String, String> post = new HashMap<>();
    post.put("id", id);
    post.put("title", "ID " + id + "번 글의 Mock 제목입니다.");
    post.put("author", "작성자 " + id);
    post.put("created_at", "2025-11-13 12:00");
    post.put("content", "ID " + id + "번 글의 Mock 내용입니다.\n" +
            "JSP 페이지에서 상세 내용을 보여주고 있습니다.\n" +
            "Bootstrap 5 스타일이 적용되었습니다.");
%>

<html>
<head>
    <title>게시글 상세 보기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container mt-4" style="max-width: 800px;">

    <div class="card">
        <div class="card-header">
            <h2 class="card-title mb-0"><%= post.get("title") %></h2>
        </div>
        <div class="card-body">
            <h6 class="card-subtitle mb-2 text-muted">
                작성자: <%= post.get("author") %> | 작성일: <%= post.get("created_at") %>
            </h6>

            <div class="card-text mt-4" style="min-height: 150px;">
                <pre><%= post.get("content") %></pre>
            </div>
        </div>
        <div class="card-footer text-end">
            <a href="edit.jsp?id=<%= post.get("id") %>" class="btn btn-warning">
                수정 (edit)
            </a>

            <a href="delete_ok.jsp?id=<%= post.get("id") %>" class="btn btn-danger">
                삭제 (delete)
            </a>

            <a href="list.jsp" class="btn btn-secondary">
                목록으로
            </a>
        </div>
    </div>

</div>

</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>

<%
    // ==========================================================
    // 1. Mock Data (가짜 데이터) 생성 (DB 연동 대신 사용)
    // ==========================================================
    List<Map<String, String>> boardList = new ArrayList<>();

    // 가짜 글 1
    Map<String, String> post1 = new HashMap<>();
    post1.put("id", "1");
    post1.put("title", "첫 번째 Mock 데이터입니다.");
    post1.put("author", "홍길동");
    post1.put("created_at", "2025-11-13 10:00");
    post1.put("content", "이것은 가짜 내용입니다. 111");
    boardList.add(post1);

    // 가짜 글 2
    Map<String, String> post2 = new HashMap<>();
    post2.put("id", "2");
    post2.put("title", "JSP CRUD 프론트엔드 제작 중");
    post2.put("author", "이순신");
    post2.put("created_at", "2025-11-13 11:30");
    post2.put("content", "이것은 가짜 내용입니다. 222");
    boardList.add(post2);

    // 가짜 글 3
    Map<String, String> post3 = new HashMap<>();
    post3.put("id", "3");
    post3.put("title", "Bootstrap 5 적용 완료");
    post3.put("author", "고혁빈");
    post3.put("created_at", "2025-11-13 14:15");
    post3.put("content", "이것은 가짜 내용입니다. 333");
    boardList.add(post3);
%>

<html>
<head>
    <title>게시판 목록 (Bootstrap)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container mt-4">
    <h1 class="text-center mb-4">게시판 목록 (Mock Data)</h1>

    <div class="text-end mb-3">
        <a href="write.jsp" class="btn btn-primary">새 글 작성 (add)</a>
    </div>

    <table class="table table-hover table-striped text-center">
        <thead class="table-light">
        <tr>
            <th>번호</th>
            <th class="text-start">제목</th>
            <th>작성자</th>
            <th>작성일</th>
        </tr>
        </thead>
        <tbody>
        <%-- Mock Data를 반복문(loop)으로 출력 --%>
        <% for (Map<String, String> post : boardList) { %>
        <tr>
            <td><%= post.get("id") %></td>
            <td class="text-start">
                <a href="view.jsp?id=<%= post.get("id") %>" class="text-decoration-none">
                    <%= post.get("title") %>
                </a>
            </td>
            <td><%= post.get("author") %></td>
            <td><%= post.get("created_at") %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

</body>
</html>
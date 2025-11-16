<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>작성 완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container mt-4" style="max-width: 700px;">

    <%
        // POST 방식 한글 깨짐 방지
        request.setCharacterEncoding("UTF-8");

        // write.jsp의 'name' 속성값으로 데이터를 받음
        String author = request.getParameter("author");
        String title = request.getParameter("title");
        String content = request.getParameter("content");
    %>

    <div class="alert alert-success" role="alert">
        <h4 class="alert-heading">폼 데이터 수신 완료 (Mock)</h4>
        <p>Mock DB에 아래와 같이 저장되었다고 가정합니다.</p>
        <hr>
        <p class="mb-0"><strong>작성자:</strong> <%= author %></p>
        <p class="mb-0"><strong>제목:</strong> <%= title %></p>
        <p class="mb-0"><strong>내용:</strong></p>
        <pre class="mb-0"><%= content %></pre>
    </div>

    <a href="list.jsp" class="btn btn-primary">목록으로 돌아가기</a>
</div>

</body>
</html>
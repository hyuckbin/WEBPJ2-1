<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>삭제 완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="container mt-4" style="max-width: 700px;">

    <%
        // view.jsp에서 ?id=1 처럼 넘겨준 id 값을 받습니다.
        String id = request.getParameter("id");
    %>

    <div class="alert alert-danger" role="alert">
        <h4 class="alert-heading">ID <%= id %>번 글 삭제 완료 (Mock)</h4>
        <p>ID <%= id %>번 글이 Mock DB에서 성공적으로 삭제되었다고 가정합니다.</p>
    </div>

    <a href="list.jsp" class="btn btn-primary">목록으로 돌아가기</a>
</div>

</body>
</html>
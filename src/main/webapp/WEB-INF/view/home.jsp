<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>home</title>
</head>
<body>
<p>home page</p>
<hr>
<p>
    <br><br>
    User: <sec:authentication property="principal.username" />
    <br><br>
    Role: <sec:authentication property="principal.authorities" />
</p>
<hr>
<!-- add logout button -->
<form:form action="${pageContext.request.contextPath}/logout" method="post">
    <input type="submit" value="logout" />
</form:form>
<script src="static/script.js"></script>
<script src="res/test.js"></script>
</body>
</html>

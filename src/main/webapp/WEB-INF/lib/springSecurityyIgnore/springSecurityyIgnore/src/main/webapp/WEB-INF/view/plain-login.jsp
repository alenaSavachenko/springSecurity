<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title> my login form </title>
    <link rel="stylesheet" href="static/style.css">
</head>
<body>
<h4>my custom login page</h4>

<form:form action="${pageContext.request.contextPath}/authenticate" method="post">
    <!-- check for login -->
    <c:if test="${param.error!=null}">
        <i class="failed">sorry! you entered invalid username/password</i>

    </c:if>
    <p>
        user name: <input type="text" name="username" />
    </p>

    <p>
        user password: <input type="password" name="password" />
    </p>

    <input type="submit"  value="Login" />

</form:form>
</body>
</html>

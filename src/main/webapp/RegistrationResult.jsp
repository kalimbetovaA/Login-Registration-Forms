<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="styles.css">
    <title>Main page</title>
</head>
<body>
<nav>
    <a href="index.jsp">Main page</a>
    <a href="login.jsp">LogIn</a>
</nav>
<div>
    <h2>You have registered successfully!</h2>
    <p>Your entered data:</p>
    <p>Full Name: <%=request.getParameter("fullName")%></p>
    <p>Email: <%=request.getParameter("email")%></p>
    <p>Birth Date: <%=request.getParameter("bdate")%></p>
    <p>Username: <%=request.getParameter("username")%></p>
    <p>Password: <%=request.getParameter("password")%></p>
</div>


</body>
</html>

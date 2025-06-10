<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Simple JSP Web App</title>
</head>
<body>
    <h1>Welcome to My Simple JSP Web App</h1>

    <form method="post">
        <label for="username">Enter your first name:</label>
        <input type="text" id="username" name="username" />
        <input type="submit" value="Submit" />
    </form>

    <br>
    <a href="https://www.wikipedia.org" target="_blank">Go to Wikipedia</a>

    <%
        String name = request.getParameter("username");
        if (name != null && !name.trim().isEmpty()) {
            out.println("<h2>Hello, " + name + "!</h2>");
        }
    %>
</body>
</html>

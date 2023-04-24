<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Company</title>
    <%@ include file="header.jsp" %>
<body>

<h1>Add Company</h1>
<form action="/createCompany" method="post" class="form">
    <div class="form-group">
        <input type="text" placeholder="name" name="name" class="form-control">
    </div>
    <div class="form-group">
        <input type="text" placeholder="country" name="country" class="form-control">
    </div>
    <button type="submit" class="btn btn-primary button">Add</button>
</form>
</body>
</html>

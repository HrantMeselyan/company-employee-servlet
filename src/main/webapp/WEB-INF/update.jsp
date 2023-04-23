<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Company</title>
</head>
<body>
<%Company company = (Company) request.getAttribute("company");%>
<a href="/companies">back</a>
<h2>Update Company</h2>
<form action="/updateCompany" method="post">
    <input type="hidden" name="id" value="<%=company.getId()%>">
    name: <input type="text" name="name" value="<%=company.getName()%>"><br>
    country: <input type="text" name="country" value="<%=company.getCountry()%>"><br>
    <input type="submit" value="update">
</form>

</body>
</html>

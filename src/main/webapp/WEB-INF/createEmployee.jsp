<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <% List<Company> companies = (List<Company>) request.getAttribute("Companies"); %>

</head>
<body>
<a href="/employees">back</a>
<h2>Add Employee</h2>
<form action="/createEmployee" method="post">
    name: <input type="text" name="name"><br>
    surname: <input type="text" name="surname"><br>
    email: <input type="text" name="email"><br>
        <select name="id">
            <%for (Company company : companies) {%>
            <option value="<%=company.getId()%>"><%=company.getName()%></option>
            <%}%>
        </select>
    <input type="submit" value="add">
</form>
</body>
</html>

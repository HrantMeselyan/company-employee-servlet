<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <% Employee employee = (Employee) request.getAttribute("employee");%>
    <%List<Company> companies = (List<Company>) request.getAttribute("companies");%>
</head>
<body>
<a href="/employees">back</a>
<h2>Update Employee</h2>
<form action="/updateEmployee" method="post">
    <input type="hidden" name="id" value="<%=employee.getId()%>">
    name: <input type="text" name="name" value="<%=employee.getName()%>"><br>
    surname: <input type="text" name="surname" value="<%=employee.getSurname()%>"><br>
    email: <input type="text" name="email" value="<%=employee.getEmail()%>"><br>
    <select name="companyId">
        <%for (Company company : companies) {%>
        <option value="<%=company.getId()%>"><%=company.getName()%></option>
        <%}%>
    </select>
    <input type="submit" value="update">
</form>
</body>
</html>

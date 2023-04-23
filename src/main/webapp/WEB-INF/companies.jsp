<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Companies</title>
    <% List<Company> companies = (List<Company>) request.getAttribute("companies"); %>
</head>
<body>
<a href="/">back</a>
<h1>Companies</h1>
<a href="/createCompany">Add</a>
<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>country</th>
        <th>action</th>
    </tr>
    <% if (companies != null && !companies.isEmpty()) { %>
    <%for (Company company : companies){ %>
         <tr>
             <td><%=company.getId()%></td>
             <td><%=company.getName()%></td>
             <td><%=company.getCountry()%></td>
             <td><a href="/removeCompany?id=<%=company.getId()%>">delete</a> /
                 <a href="/updateCompany?id=<%=company.getId()%>">Update</a></td>
         </tr>
    <%} } %>
</table>
</body>
</html>

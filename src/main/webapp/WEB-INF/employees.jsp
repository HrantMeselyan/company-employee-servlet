<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <% List<Employee> employees = (List<Employee>) request.getAttribute("employees"); %>
</head>
<body>
<a href="/">back</a>
<a href="/createEmployee">Add</a>

<table>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>company</th>
        <th>action</th>
    </tr>
    <%if (employees != null && !employees.isEmpty()) {%>
    <%for (Employee employee : employees) { %>
    <tr>
        <td><%=employee.getId()%>
        </td>
        <td><%=employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        <td><%=employee.getEmail()%>
        </td>
        <td><%=employee.getCompany().getName()%>
        </td>
        <td><a href="/removeEmployee?id=<%=employee.getId()%>">delete</a> /
            <a href="/updateEmployee?id=<%=employee.getId()%>">Update</a></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>

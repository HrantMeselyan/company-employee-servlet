<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <% List<Employee> employees = (List<Employee>) request.getAttribute("employees"); %>
    <%@ include file="header.jsp" %>
<body>
<h1 class="main-title">Employees</h1>
<div class="table">
    <table id="customers">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>surname</th>
            <th>email</th>
            <th>company</th>
            <th>action</th>
        </tr>
        <% if (employees != null && !employees.isEmpty()) { %>
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
            <td><a href="/removeEmployee?id=<%=employee.getId()%>"><img src="img/trash.svg" alt=""></a> |
                <a href="/updateEmployee?id=<%=employee.getId()%>"><img src="img/update.svg"></a></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="/createEmployee" class=" d-flex flex-row-reverse">
        <button type="button" class="btn btn-primary">Add</button>
    </a>
</div>
</body>
</html>

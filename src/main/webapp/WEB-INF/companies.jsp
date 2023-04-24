<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Companies</title>
        <% List<Company> companies = (List<Company>) request.getAttribute("companies"); %>
    <%@ include file="header.jsp" %>
<body>
<h1 class="main-title">Companies</h1>
<div class="table">
    <table id="customers">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>country</th>
            <th>action</th>
        </tr>
        <% if (companies != null && !companies.isEmpty()) { %>
        <%for (Company company : companies) { %>
        <tr>
            <td><%=company.getId()%>
            </td>
            <td><%=company.getName()%>
            </td>
            <td><%=company.getCountry()%>
            </td>
            <td><a href="/removeCompany?id=<%=company.getId()%>"><img src="img/trash.svg"></a> |
                <a href="/updateCompany?id=<%=company.getId()%>"><img src="img/update.svg"></a></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <a href="/createCompany" class=" d-flex flex-row-reverse">
        <button type="button" class="btn btn-primary">Add</button>
    </a>
</div>

</body>
</html>

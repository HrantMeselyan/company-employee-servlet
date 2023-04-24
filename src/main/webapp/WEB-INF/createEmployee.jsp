<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <% List<Company> companies = (List<Company>) request.getAttribute("Companies"); %>
    <%@ include file="header.jsp" %>
</head>
<body>
<h1>Add Employee</h1>
<form action="/createEmployee" method="post" class="form-2 justify-content-center">
    <div class="form-row d-flex">
        <div class="form-group col-md-6">
            <label>Name</label>
            <input type="text" class="form-control" name="name" placeholder="Name">
        </div>
        <div class="form-group col-md-6">
            <label>Surname</label>
            <input type="text" class="form-control" name="surname" placeholder="Surname">
        </div>
    </div>
    <div class="form-row d-flex">
        <div class="form-group col-md-6">
            <label>Email</label>
            <input type="email" placeholder="Email" name="email" class="form-control">
        </div>
        <div class="form-group col-md-6">
            <label>Companies</label>
            <select class="form-control" name="id">
                <option selected>Choose...</option>
                <%for (Company company : companies) {%>
                <option value="<%=company.getId()%>"><%=company.getName()%>
                </option>
                <%}%>
            </select>
        </div>
    </div>
    <div class="justify-content-center d-flex">
        <button type="submit" class="btn btn-primary d-flex justify-content-center">Add</button>
    </div>
</form>
</body>
</html>

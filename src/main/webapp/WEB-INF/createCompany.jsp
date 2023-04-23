<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Company</title>
</head>
<body>
<a href="/companies">back</a>
<h2>Add Company</h2>
<form action="/createCompany" method="post">
  name: <input type="text" name = "name"><br>
  country: <input type="text" name = "country"><br>
  <input type="submit" value="add">
</form>

</body>
</html>

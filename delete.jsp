<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Traveller Record</title>
<style>
    a {
        text-decoration: none;
    }
    body {
        background-image: url("https://images.unsplash.com/photo-1503220317375-aaad61436b1b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRyYXZlbHxlbnwwfHwwfHx8MA%3D%3D");
        background-repeat: no-repeat;
        background-size: cover;
        font-family: Arial, sans-serif;
        color: #333;
        text-align: center;
        padding: 50px;
    }
    h2 {
        color: white;
        font-family: 'Times New Roman', Times, serif;
        font-size: xxx-large;
        text-align: center;
    }
    table {
        background-color: white;
        width: 50%;
        margin: 0 auto;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    input[type="text"], input[type="submit"] {
        padding: 5px 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
    }
    input[type="submit"] {
        background-color: #4CAF50; /* Green color */
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #43A047; /* Darker green on hover */
    }
    .container {
        margin-top: 20px;
        background-color: white;
        text-align: center;
        padding: 10px;
        border-radius: 5px;
    }
    button {
        border-color: red;
        border-radius: 5px;
        background-color: transparent;
        cursor: pointer;
        padding: 5px 10px;
    }
    button a {
        color: red;
    }
    h2{
    color: green;
    }
</style>
</head>
<body>
<h2>Delete Travel Details</h2>
<form action="delete.jsp" method="post">
    <table>
        <tr>
            <th>Traveller Name:</th>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <th></th>
            <td><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>

<%
String name = request.getParameter("name");
int i = 0;
try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/budgetplanner", "root", "");
    Statement st = conn.createStatement();
    i = st.executeUpdate("DELETE FROM addbudget WHERE name='" + name + "'");
    conn.close();
    st.close();
} catch(Exception e) {
    System.out.print(e);
    e.printStackTrace();
}
if(i != 0) {
%>
<div class="container">
    <h3>Data Deleted Successfully</h3>
    <button><a href="Disp.jsp">Back</a></button>
</div>
<%
} %>

</body>
</html>
s
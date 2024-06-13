<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
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
        margin-bottom: 20px;
    }
    table {
        width: 80%;
        margin: 0 auto;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-collapse: collapse;
    }
    th, td {
        padding: 15px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
        font-weight: bold;
    }
    tr:hover {
        background-color: #f5f5f5;
    }
    button {
        border: none; /* Removed border for a cleaner look */
        border-radius: 5px;
        padding: 15px 30px; /* Increased padding for better readability */
        cursor: pointer;
        font-size: 1em;
        margin: 10px 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Added subtle shadow */
        font-family: 'Open Sans', sans-serif; /* Changed font family */
    }
    .btn-green {
        background-color: #4CAF50; /* Green color */
        color: white;
    }
    .btn-green:hover {
        background-color: #43A047; /* Darker green on hover */
    }
    .btn-purple {
        background-color: #673AB7; /* Purple color */
        color: white;
    }
    .btn-purple:hover {
        background-color: #5E008B; /* Darker purple on hover */
    }
    .btn-blue {
        background-color: #3F51B5; /* Blue color */
        color: white;
    }
    .btn-blue:hover {
        background-color: #283593; /* Darker blue on hover */
    }
    .btn-red {
        background-color: #F44336; /* Red color */
        color: white;
    }
    .btn-red:hover {
        background-color: #D32F2F; /* Darker red on hover */
    }
    .message {
        background-color: #E3E4FA;
        margin-top: 20px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

</style>
</head>
<body>
<h2>Travel Details</h2>
<%
try {
    Class.forName("com.mysql.jdbc.Driver"); 
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/budgetplanner", "root", "");
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select * from addbudget");
%>
    <table cellpadding="15" border="1">
    <tr>
        <th>Name</th>
        <th>Email</th>
        <th>Gender</th>
        <th>Budget</th>
        <th>Destination</th>
    </tr>
<%
    while (rs.next()) {
%>
    <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getInt(4) %></td>
        <td><%= rs.getString(5) %></td>
    </tr>
<% 
    } 
%>
<%
    // Close all the connections.
    rs.close();
    st.close();
    con.close();
} catch (Exception ex) {
%>
    <div class="message">
        <font size="+3" color="red">
        <b>Unable to connect to the database.</b>
        </font>
    </div>
<%
}
%>
</table>
<table style="margin-top: 20px;">
<tr>
<td>
<form action="Disp.jsp" method="get">
    <button type="submit" class="btn-green"><a href="htm_payment.html">Confirm</a></button>
    <button class="btn-purple"><a href="update.jsp">Update</a></button>
    <button class="btn-blue"><a href="insert.jsp">Add</a></button>
    <button class="btn-red"><a href="delete.jsp">Delete</a></button>
</form>
</td>
</tr>
</table>
</body>
</html>

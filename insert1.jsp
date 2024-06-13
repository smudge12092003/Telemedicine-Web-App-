<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Update Patient Details</title>
<style>
        body {
        background-image: url("https://images.unsplash.com/photo-1503220317375-aaad61436b1b?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHRyYXZlbHxlbnwwfHwwfHx8MA%3D%3D");
        background-repeat: no-repeat;
        background-size: cover;
        font-family: Arial, sans-serif;
        color: #333;
        text-align: center;
        padding: 50px;
    }

        input[type=text], input[type=date], input[type=password], input[type=email], input[type=age], .doctorselect {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            box-sizing: border-box;
        }

        a {
            text-decoration: none;
        }

        .button {
            display: flex;
            justify-content: space-around;
        }

        .container {
            margin-left: 120px;
            margin-right: 120px;
            padding-left: 30px;
            padding-right: 30px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        /* Button Styles */
        .button button {
            padding: 14px 20px;
            margin-right: 120px;
            margin-left: 120px;
            border: 2px solid;
            border-radius: 5px;
            cursor: pointer;
        }

        .button button.login {
            background-color: transparent;
            color: green;
        }

        .button button.back {
            background-color: transparent;
            color: red;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }
        }
    </style>
</head>
<body>
<font size="+3" color="green"><br>Welcome to Travel Mate</font>
<FORM action="insert.jsp" method="post">
<TABLE style="background-color: #ECE5B6;" WIDTH="30%" >
<TR>
<TH width="50%">Name</TH>
<TD width="50%"><INPUT TYPE="text" NAME="name"></TD>
</tr>
<TR>
<TH width="50%">Email</TH>
<TD width="50%"><INPUT TYPE="email" NAME="email"></TD>
</tr>
<tr>
<TH width="50%">Gender</TH>
<TD width="50%"><select name="gender">
<option>Male</option>
<option>Female</option>
</select></TD>
</tr>
<tr>
<TH width="50%">Budget</TH>
<TD width="50%"><INPUT TYPE="text" NAME="budget" placeholder="starting from 5000"></TD>
</tr>
<tr>
<TH width="50%">Destination preferences</TH>
<TD width="50%"><select name="destination">
<option>Goa</option>
<option>Delhi</option>
<option>Kanyakumari</option>
<option>kashmir</option>
</select></TD>
</tr>
<TR>
<TH></TH>
<TD width="50%"><INPUT TYPE="submit" VALUE="submit"></TD>
</tr>
</TABLE>
<%
   int uq=0;
try {
       Class.forName("com.mysql.jdbc.Driver"); 
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/budgetplanner","root","");
       String sql="UPDATE addbudget SET name=?, email=?, gender=?, budget=?, destination=? WHERE name=?";
       PreparedStatement pstatement = con.prepareStatement(sql);
	   pstatement.setString(1, request.getParameter("name")));
	   pstatement.setString(2, request.getParameter("email"));
	   pstatement.setString(3, request.getParameter("gender"));
	   pstatement.setInt(4, Integer.parseInt(request.getParameter("budget")));
	   pstatement.setString(5, request.getParameter("destination"));
	   uq=pstatement.executeUpdate();
	   pstatement.close();
       con.close();
}
catch(Exception ex) { 
	//out.println("Unable to connect to database.");
}
 
if (uq != 0) {
%>
<div class="container" style="margin-top: 20px; background-color: white;">
        <h3>Patient Data Updated Sucessfully</h3>
         <button style="border-color:green;border-radius:5px;"><a href="Disp.jsp" style="color:green;">View</a></button>
    </div>
    <%
              } %>                
  </form>    
    
</body>
</html>

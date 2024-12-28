<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* Global styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f0f8ff;
        margin: 0;
        padding: 0;
        text-align: center;
    }

    h1 {
        color: #4CAF50;
        margin-top: 50px;
        font-size: 2.5em;
    }

    /* Table styling */
    table {
        width: 80%;
        margin: 0 auto;
        border-collapse: collapse;
    }

    th, td {
        padding: 12px;
        border: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:hover {
        background-color: #ddd;
    }

    /* Button styles */
    button {
        background-color: #4CAF50; /* Green background */
        color: white; /* White text */
        border: none;
        padding: 10px 20px;
        text-align: center;
        font-size: 14px;
        margin: 5px;
        cursor: pointer;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #45a049; /* Darker green when hovered */
    }

    /* Link styling */
    a {
        text-decoration: none;
    }
</style>
</head>
<body>
	<h1>All events</h1>
	<table border="5" cellspacing="10" cellpadding="10" rules="all">
		<tr>
			<th>Id</th>
			<th>Event Title</th>
			<th>Event Location</th>
			<th>Event Date</th>
			<th>Event Chief Guest</th>
			<th colspan="2">Action</th>
		</tr>
		<%
			ResultSet rs = (ResultSet) request.getAttribute("rs");
			while(rs.next())
			{
		%>
		<tr>
			<td><%= rs.getInt(1) %></td>
			<td><%= rs.getString(2) %> </td>
			<td><%= rs.getString(3) %> </td>
			<td><%= rs.getString(4) %> </td>
			<td><%= rs.getString(5) %> </td>
			<td><a href="delete?id=<%= rs.getInt(1) %>"><button>Delete</button></a></td>
			<td><a href="updatepage?id=<%= rs.getInt(1) %>"><button>Update</button></a></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>
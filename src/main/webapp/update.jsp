<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>
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

    /* Form container */
    form {
        background-color: white;
        border-radius: 8px;
        padding: 30px;
        max-width: 400px;
        margin: 0 auto;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    input {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        box-sizing: border-box;
    }

    input::placeholder {
        color: #888;
    }

    button {
        width: 100%;
        padding: 14px;
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Add responsiveness */
    @media (max-width: 768px) {
        h1 {
            font-size: 2em;
        }

        form {
            width: 90%;
            padding: 20px;
        }

        button {
            font-size: 14px;
        }
    }
</style>
</head>
<body>

	<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
	
	%>
	
	<h1>Update Page</h1>
	
	<form action="update">
		<input type="text" name="id" value="<%= rs.getInt(1) %>" placeholder="Enter Event Id">
		<input type="text" name="title" value="<%= rs.getString(2) %>" placeholder="Enter Event Title">
		<input type="text" name="location" value="<%= rs.getString(3) %>" placeholder="Enter Event Location">
		<input type="text" name="date" value="<%= rs.getString(4) %>" placeholder="Enter Event Date (DD-MM-YYYY)">
		<input type="text" name="guest" value="<%= rs.getString(5) %>" placeholder="Enter Event Chief Guest">
		<button type="submit">Submit</button>
	</form>
</body>
</html>
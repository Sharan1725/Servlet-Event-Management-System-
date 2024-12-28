
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<style type="text/css">
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

/* Button styles */
button {
    background-color: #4CAF50; /* Green background */
    color: white; /* White text */
    border: none;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 20px;
    cursor: pointer;
    border-radius: 8px;
    transition: background-color 0.3s ease;
}

button:hover {
    background-color: #45a049; /* Darker green when hovered */
}

/* Link styles */
a {
    text-decoration: none;
}

/* Styling the page container */
.container {
    width: 100%;
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
}

/* Add responsiveness */
@media (max-width: 768px) {
    h1 {
        font-size: 2em;
    }

    button {
        padding: 12px 24px;
        font-size: 14px;
    }
}
	
</style>
</head>
<body>
	<h1>Welcome to Event Management System</h1>
	
	<a href="create.jsp"> <button>Create Event</button> </a>
	<br><br>
	<a href="fetchAllEvents"> <button>View Event</button> </a>
	
</body>
</html>
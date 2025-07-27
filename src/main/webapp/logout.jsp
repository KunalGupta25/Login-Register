<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout!</title>
</head>
<body>
	<%
        // Retrieve the session object
        HttpSession session2 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session2 != null) {
        	session2.invalidate();
        }
        
        response.sendRedirect("login.jsp");
            %>
</body>
</html>
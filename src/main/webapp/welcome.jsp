<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <!-- Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Google Fonts: Inter -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <!-- Custom Stylesheet -->
    <link rel="stylesheet" href="style.css">
</head>
<body class="bg-gray-100">
    <%
        // Retrieve the session object
        HttpSession session1 = request.getSession(false);

        // Check if the session is not null and the username attribute is set
        if (session1 != null && session1.getAttribute("username") != null) {
            // Get the username from the session
            String username = (String) session1.getAttribute("username");
    %>
    <!-- Main Container -->
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-r from-purple-500 to-pink-500 p-4">
        
        <!-- Welcome Card -->
        <div class="w-full max-w-lg bg-white rounded-2xl shadow-2xl p-8 md:p-12 text-center">
            
            <!-- Header -->
            <div class="mb-8">
                <h1 class="text-4xl md:text-5xl font-bold text-gray-800">Welcome <%= username %>!</h1>
                <p class="text-gray-600 mt-4 text-lg">You have successfully logged in.</p>
            </div>

            <!-- Content -->
            <div class="mb-8">
                <p class="text-gray-700">
                    It's Lonely Here.
                </p>
            </div>

            <!-- Logout Button -->
            <div>
                <a href="logout.jsp"
                   class="w-full sm:w-auto inline-block bg-red-500 text-white font-bold py-3 px-8 rounded-lg hover:bg-red-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transform hover:-translate-y-1 transition-all duration-300 shadow-lg">
                    Logout
                </a>
            </div>
            <%
        } else {
            // Redirect to the login page if the session is not valid
            response.sendRedirect("login.jsp");
        }
    %>
        </div>
    </div>
</body>
</html>

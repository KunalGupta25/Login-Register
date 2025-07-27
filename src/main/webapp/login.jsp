<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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
    <!-- Main Container -->
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-r from-blue-500 to-purple-600 p-4">
        
        <!-- Login Card -->
        <div class="w-full max-w-md bg-white rounded-2xl shadow-2xl p-8 md:p-12">
            
            <!-- Header -->
            <div class="text-center mb-8">
                <h1 class="text-3xl md:text-4xl font-bold text-gray-800">Welcome Back</h1>
                <p class="text-gray-500 mt-2">Please enter your details to sign in.</p>
            </div>

            <!-- Login Form -->
            <form action="LoginServlet" method="post">
                <!-- Email Input -->
                <div class="mb-6">
                    <label for="username" class="block text-sm font-medium text-gray-700 mb-2">Username</label>
                    <input type="text" id="username" name="username"
                           class="w-full px-4 py-3 bg-gray-100 border-2 border-transparent rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition duration-300"
                           placeholder="John" required>
                </div>

                <!-- Password Input -->
                <div class="mb-4">
                    <div class="flex justify-between items-baseline">
                        <label for="password" class="block text-sm font-medium text-gray-700 mb-2">Password</label>
                        <a href="#" class="text-sm text-blue-600 hover:underline">Forgot password?</a>
                    </div>
                    <input type="password" id="password" name="password"
                           class="w-full px-4 py-3 bg-gray-100 border-2 border-transparent rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:border-transparent transition duration-300"
                           placeholder="Enter your password" required>
                </div>

                <!-- Submit Button -->
                <div class="mt-8">
                    <button type="submit"
                            class="w-full bg-blue-600 text-white font-bold py-3 px-4 rounded-lg hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 transform hover:-translate-y-1 transition-all duration-300 shadow-lg">
                        Sign In
                    </button>
                </div>
            </form>
            <%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
        <%-- Display error message if Register Successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your Registration is Successful. Please Login.</p>
        <% } %>

            <!-- Sign Up Link -->
            <div class="mt-8 text-center">
                <p class="text-gray-600">
                    Don't have an account? 
                    <a href="register.jsp" class="font-medium text-blue-600 hover:underline">Sign up</a><br>
                    <a href="index.html" class="font-medium text-blue-600 hover:underline">Back to Home</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>

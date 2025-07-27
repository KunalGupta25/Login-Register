<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Page</title>
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
    <div class="min-h-screen flex items-center justify-center bg-gradient-to-r from-teal-400 to-blue-500 p-4">
        
        <!-- Register Card -->
        <div class="w-full max-w-md bg-white rounded-2xl shadow-2xl p-8 md:p-12">
            
            <!-- Header -->
            <div class="text-center mb-8">
                <h1 class="text-3xl md:text-4xl font-bold text-gray-800">Create an Account</h1>
                <p class="text-gray-500 mt-2">Join us by filling out the form below.</p>
            </div>

            <!-- Register Form -->
            <form action="RegisterServlet" method="post">
                <!-- Full Name Input -->
                <div class="mb-6">
                    <label for="username" class="block text-sm font-medium text-gray-700 mb-2">Username</label>
                    <input type="text" id="username" name="username"
                           class="w-full px-4 py-3 bg-gray-100 border-2 border-transparent rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:border-transparent transition duration-300"
                           placeholder="John" required>
                </div>

                <!-- Email Input -->
                <div class="mb-6">
                    <label for="email" class="block text-sm font-medium text-gray-700 mb-2">Email Address</label>
                    <input type="email" id="email" name="email"
                           class="w-full px-4 py-3 bg-gray-100 border-2 border-transparent rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:border-transparent transition duration-300"
                           placeholder="you@example.com" required>
                </div>

                <!-- Password Input -->
                <div class="mb-6">
                    <label for="password" class="block text-sm font-medium text-gray-700 mb-2">Password</label>
                    <input type="password" id="password" name="password"
                           class="w-full px-4 py-3 bg-gray-100 border-2 border-transparent rounded-lg text-gray-800 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:border-transparent transition duration-300"
                           placeholder="Create a strong password" required>
                </div>

                <!-- Submit Button -->
                <div class="mt-8">
                    <button type="submit"
                            class="w-full bg-teal-500 text-white font-bold py-3 px-4 rounded-lg hover:bg-teal-600 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-teal-500 transform hover:-translate-y-1 transition-all duration-300 shadow-lg">
                        Register
                    </button>
                </div>
            </form>
            <%-- Display error message if registration fails --%>
        <% String error = request.getParameter("error");
           if (error != null && error.equals("1")) { %>
            <p style="color: red;">Registration failed. Please try again.</p>
        <% } %>
            <!-- Sign In Link -->
            <div class="mt-8 text-center">
                <p class="text-gray-600">
                    Already have an account? 
                    <a href="login.jsp" class="font-medium text-teal-500 hover:underline">Sign in</a><br>
                    <a href="index.html" class="font-medium text-blue-600 hover:underline">Back to Home</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>

<%-- 
    Document   : Login
    Created on : May 19, 2025, 11:51:06 PM
    Author     : Yoland Handoko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String emailError = request.getParameter("emailError");
    String passwordError = request.getParameter("passwordError");
    String prevEmail = request.getParameter("email") != null ? request.getParameter("email") : "";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - Maison de Paw</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-50 flex items-center justify-center h-screen font-sans text-gray-900">

<div class="bg-white p-8 rounded-2xl shadow-md w-full max-w-md">
    <h2 class="text-2xl font-bold text-center mb-6">🐾 Login to Maison de Paw</h2>
    <form action="login" method="POST" class="space-y-4">
        <div>
            <label for="email" class="block text-sm font-medium">Email</label>
            <input type="email" id="email" name="email" required value="<%= prevEmail %>"
                   class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            <% if ("true".equals(emailError)) { %>
                <p class="text-sm text-red-600 mt-1">E-mail belum terdaftar.</p>
            <% } %>
        </div>
        <div>
            <label for="password" class="block text-sm font-medium">Password</label>
            <input type="password" id="password" name="password" required
                   class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
            <% if ("true".equals(passwordError)) { %>
                <p class="text-sm text-red-600 mt-1">Password Anda salah.</p>
            <% } %>
        </div>
        <button type="submit" class="w-full bg-black text-white py-2 rounded-full hover:bg-gray-800 transition">
            Login
        </button>
    </form>
    <p class="text-center text-sm text-gray-600 mt-4">
        Belum punya akun? <a href="register.jsp" class="text-blue-600 hover:underline">Daftar di sini</a>
    </p>
</div>

</body>
</html>

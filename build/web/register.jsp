<%-- 
    Document   : Register
    Created on : May 19, 2025, 11:51:25 PM
    Author     : Yoland Handoko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Register - Maison de Paw</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    
</head>
<body class="bg-gray-50 flex items-center justify-center h-screen font-sans text-gray-900">

<div class="bg-white p-8 rounded-2xl shadow-md w-full max-w-md">
    <h2 class="text-2xl font-bold text-center mb-6">🐾 Daftar Akun Maison de Paw</h2>
    <form action="${pageContext.request.contextPath}/register"
      method="POST" class="space-y-4">

        <div>
            <label for="name" class="block text-sm font-medium">Nama Lengkap</label>
            <input type="text" id="name" name="name" required class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>
        <div>
            <label for="email" class="block text-sm font-medium">Email</label>
            <input type="email" id="email" name="email" required class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>
        <div>
            <label for="password" class="block text-sm font-medium">Password</label>
            <input type="password" id="password" name="password" required class="w-full mt-1 px-4 py-2 border rounded-lg focus:outline-none focus:ring-2 focus:ring-blue-500">
        </div>
        <button type="submit" class="w-full bg-black text-white py-2 rounded-full hover:bg-gray-800 transition">
            Daftar
        </button>
    </form>
    <p class="text-center text-sm text-gray-600 mt-4">
        Sudah punya akun? <a href="login.jsp" class="text-blue-600 hover:underline">Login di sini</a>
    </p>
</div>

</body>
</html>

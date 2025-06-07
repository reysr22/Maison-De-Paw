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
    <script>
        function selectRole(role) {
            document.getElementById('selectedRole').value = role;
            document.getElementById('roleSelection').classList.add('opacity-0', 'pointer-events-none');
            setTimeout(() => {
                document.getElementById('roleSelection').style.display = 'none';
                document.getElementById('loginFormContainer').classList.remove('hidden');
                document.getElementById('loginFormContainer').classList.add('fade-in');
            }, 300);
        }
        function selectRole(role) {
            document.getElementById('selectedRole').value = role;

            if (role === 'admin' || role === 'dokter') {
                document.getElementById('registerLink').style.display = 'none';
            } else {
                document.getElementById('registerLink').style.display = 'block';
            }

            document.getElementById('roleSelection').classList.add('opacity-0', 'pointer-events-none');
            setTimeout(() => {
                document.getElementById('roleSelection').style.display = 'none';
                document.getElementById('loginFormContainer').classList.remove('hidden');
                document.getElementById('loginFormContainer').classList.add('fade-in');
            }, 300);
        }
        function goBack() {
            document.getElementById('selectedRole').value = '';
            document.getElementById('loginFormContainer').classList.add('hidden');
            document.getElementById('loginFormContainer').classList.remove('fade-in');
            document.getElementById('roleSelection').style.display = 'block';
            setTimeout(() => {
                document.getElementById('roleSelection').classList.remove('opacity-0', 'pointer-events-none');
            }, 10);
        }
    </script>
    <style>
        .fade-in {
            animation: fadeIn 0.6s ease-out forwards;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.95);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
    </style>
    <body class="bg-gray-50 flex items-center justify-center h-screen font-sans text-gray-900">

        <div class="w-full max-w-md">
            <!-- Role Selection -->
            <div id="roleSelection" class="transition-opacity duration-500">
                <h2 class="text-2xl font-bold text-center mb-6">🐾 Login sebagai:</h2>
                <div class="grid grid-cols-1 gap-4">
                    <button onclick="selectRole('user')" class="w-full py-4 rounded-xl border hover:shadow-lg bg-white text-center text-lg font-semibold transition-transform transform hover:scale-105">
                        👤 User
                    </button>
                    <button onclick="selectRole('admin')" class="w-full py-4 rounded-xl border hover:shadow-lg bg-white text-center text-lg font-semibold transition-transform transform hover:scale-105">
                        🛠️ Admin
                    </button>
                    <button onclick="selectRole('dokter')" class="w-full py-4 rounded-xl border hover:shadow-lg bg-white text-center text-lg font-semibold transition-transform transform hover:scale-105">
                        🩺 Dokter
                    </button>
                </div>
            </div>

            <div id="loginFormContainer" class="hidden bg-white p-8 rounded-2xl shadow-md mt-6">
                <button type="button" onclick="goBack()"
                        class="w-full py-3 mb-4 rounded-xl border hover:shadow-md bg-white text-center text-sm font-semibold text-blue-600 hover:bg-blue-50 transition-transform transform hover:scale-105">
                    ← Kembali ke Pilihan Role
                </button>

                <h2 class="text-2xl font-bold text-center mb-6">🔐 Masukkan Akun Anda</h2>
                <form action="login" method="POST" class="space-y-4">
                    <!-- Hidden role input -->
                    <input type="hidden" name="role" id="selectedRole" value="">

                    <div>
                        <label for="email" class="block text-sm font-medium">Email</label>
                        <input type="email" id="email" name="email" required value="<%= prevEmail%>"
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
                        <% }%>
                    </div>

                    <button type="submit" class="w-full bg-black text-white py-2 rounded-full hover:bg-gray-800 transition">
                        Login
                    </button>
                </form>
                <p id="registerLink" class="text-center text-sm text-gray-600 mt-4">
                    Belum punya akun? <a href="register.jsp" class="text-blue-600 hover:underline">Daftar di sini</a>
                </p>
            </div>
        </div>

    </body>
</html>

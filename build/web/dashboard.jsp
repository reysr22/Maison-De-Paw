<%-- 
    Document   : dashboard.jsp
    Created on : May 20, 2025, 12:28:00 AM
    Author     : Yoland Handoko
--%>

<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<%@ page session="true" %>
<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<%@ page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String email = (String) session.getAttribute("email");
    String name = "";

    if (email != null) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/maisondepaw", "root", "");
            PreparedStatement ps = conn.prepareStatement("SELECT name FROM users WHERE email = ?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                name = rs.getString("name");
            }
            conn.close();
        } catch (Exception e) {
            out.println("DB Error: " + e.getMessage());
        }
    } else {
        name = "";
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard - Maison de Paw</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<header class="sticky top-0 z-50 bg-white flex justify-between items-center px-8 py-4 shadow-md">
    <div class="flex items-center space-x-2">
        <div class="text-2xl font-bold">🐾 Maison de Paw</div>
    </div>
    <nav class="hidden md:flex space-x-6 text-sm font-medium">
        <a href="dashboard.jsp" class="hover:text-blue-600">Home</a>
        <a href="about.jsp" class="hover:text-blue-600">Tentang Kami</a>
        <a href="#" class="hover:text-blue-600">Layanan</a>
        <a href="#" class="hover:text-blue-600">FAQ</a>
        <a href="#" class="hover:text-blue-600">Kontak</a>
    </nav>
    <a href="index.jsp" class="bg-black text-white px-4 py-2 rounded-full text-sm hover:bg-gray-800 transition">
        Logout
    </a>
</header>
<body class="bg-gray-100 font-sans">
    
    <div class="px-10 pt-6">
        <h1 class="text-3xl font-bold text-gray-800">Selamat datang, <span class="text-purple-600"><%= name %></span>!</h1>
        <p class="text-gray-500 mt-1">Berikut ringkasan klinik hari ini</p>
    </div>
    
    <div class="grid grid-cols-3 gap-4 px-10 mt-6">
        <div class="bg-white rounded-xl shadow p-4">
            <p class="text-gray-500">Janji Temu Hari Ini</p>
            <h2 class="text-xl font-bold text-purple-600">12</h2>
        </div>
        <div class="bg-white rounded-xl shadow p-4">
            <p class="text-gray-500">Pasien Baru</p>
            <h2 class="text-xl font-bold text-purple-600">4</h2>
        </div>
        <div class="bg-white rounded-xl shadow p-4">
            <p class="text-gray-500">Obat Hampir Habis</p>
            <h2 class="text-xl font-bold text-red-500">3</h2>
        </div>
    </div>

    <div class="px-10 mt-10">
        <h2 class="text-2xl font-bold text-gray-700 mb-4">Layanan Klinik</h2>
        <div class="grid grid-cols-3 gap-6">
            <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition">
                <h3 class="font-semibold text-lg text-purple-600">Janji Temu</h3>
                <p class="text-gray-600 text-sm mt-2">Jadwalkan konsultasi untuk hewan peliharaan Anda.</p>
                <div class="mt-4 text-sm font-medium bg-gray-100 inline-block px-3 py-1 rounded">Rp 100.000,- /Jam</div>
                <a href="janji.jsp">
                    <button class="mt-4 bg-purple-600 hover:bg-purple-700 text-white px-4 py-2 rounded-lg text-sm transition">Lihat Detail</button>
                </a>
            </div>
            <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition">
                <div class="text-yellow-500 mb-4"></div>
                <h3 class="text-lg font-semibold text-yellow-600">Vaksinasi</h3>
                <p class="text-sm text-gray-600 mt-2 mb-4">Jaga kesehatan hewan kesayangan Anda dengan layanan vaksinasi dari dokter hewan terpercaya. Tersedia untuk anjing, kucing, dan hewan peliharaan lainnya.</p>
                <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 125.000,- /Vaksin</span>
                <a href="vaksinasi.jsp">
                    <button class="mt-4 bg-yellow-500 hover:bg-yellow-600 text-white px-4 py-2 rounded-lg text-sm transition">Lihat Detail</button>
                </a>
            </div>
            <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition">
                <div class="text-blue-500 mb-4"></div>
                <h3 class="text-lg font-semibold text-blue-600">Rawat Inap</h3>
                <p class="text-sm text-gray-600 mt-2 mb-4">Kami menyediakan layanan rawat inap untuk hewan yang membutuhkan perawatan intensif dengan pengawasan dokter hewan 24 jam. Nyaman, aman, dan terpantau dengan baik.</p>
                <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 500.000,- /Visit</span>
                <a href="rawat-inap.jsp">
                    <button class="mt-4 bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg text-sm transition">Lihat Detail</button>
                </a>
            </div>
            <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition lg:col-start-2">
                <div class="text-blue-500 mb-4"></div>
                <h3 class="text-lg font-semibold text-blue-600">Penitipan Hewan</h3>
                <p class="text-sm text-gray-600 mt-2 mb-4">Tinggalkan hewan kesayangan Anda dengan tenang! Layanan penitipan kami nyaman dan aman, dengan perawatan penuh kasih dari tim berpengalaman.</p>
                <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 270.000,- /Visit</span>
                <a href="penitipan.jsp">
                    <button class="mt-4 bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg text-sm transition">Lihat Detail</button>
                </a>
            </div>

        </div>
    </div>
    <div class="px-10 mt-12">
        <h2 class="text-xl font-bold text-gray-700 mb-2">Janji Temu Hari Ini</h2>
        <ul class="bg-white rounded-xl shadow divide-y">
            <li class="p-4 flex justify-between">
                <span>08:00 - Budi (Kucing)</span><span class="text-sm text-purple-500">Dr. Anna</span>
            </li>
        </ul>
    </div>
    <div class="px-10 mt-10">
        <h2 class="text-xl font-bold text-gray-700 mb-2">Aktivitas Terakhir</h2>
        <ul class="bg-white rounded-xl shadow divide-y">
            <li class="p-4 text-gray-600">️Admin menambahkan layanan baru: Rawat Inap</li>
            <li class="p-4 text-gray-600">Stok obat "Antibiotik Kucing" berkurang</li>
        </ul>
    </div>
    <div class="px-10 mt-10 mb-10">
        <h2 class="text-xl font-bold text-gray-700 mb-2">Notifikasi</h2>
        <div class="bg-yellow-100 border-l-4 border-yellow-500 p-4 rounded shadow text-yellow-800">
            ️ Periksa stok vaksin anjing — tinggal sedikit!
        </div>
    </div>

</body> 
</html>

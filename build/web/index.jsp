<%-- 
    Document   : index
    Created on : May 19, 2025, 11:48:31 PM
    Author     : Yoland Handoko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Maison de Paw</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="font-sans bg-gray-50 text-gray-900">

<header class="sticky top-0 z-50 bg-white flex justify-between items-center px-8 py-4 shadow-md">
    <div class="flex items-center space-x-2">
        <div class="text-2xl font-bold">🐾 Maison de Paw</div>
    </div>
    <nav class="hidden md:flex space-x-6 text-sm font-medium">
        <a href="#" class="hover:text-blue-600">Home</a>
        <a href="#" class="hover:text-blue-600">Tentang Kami</a>
        <a href="#" class="hover:text-blue-600">Layanan</a>
        <a href="#" class="hover:text-blue-600">FAQ</a>
        <a href="#" class="hover:text-blue-600">Kontak</a>
    </nav>
    <a href="login.jsp" class="bg-black text-white px-4 py-2 rounded-full text-sm hover:bg-gray-800 transition">
        Login
    </a>
</header>

<section class="px-8 py-16 grid grid-cols-1 md:grid-cols-2 gap-8 items-center max-w-7xl mx-auto">
    <div>
        <h1 class="text-5xl font-bold leading-tight mb-6">
            Your trusted <br> partner in <br> pet health
        </h1>
        <p class="text-gray-600 mb-6">
            Lorem ipsum dolor sit amet consectetur adipisicing elit, sed do tempor incididunt ut labore et dolore magna aliqua ut enim.
        </p>
        <div class="flex space-x-4">
            <button class="bg-black text-white px-6 py-3 rounded-full hover:bg-gray-800 transition">
                Book an appointment
            </button>
            <a href="#" class="flex items-center text-sm font-medium text-gray-700 hover:text-blue-600 transition">
                Browse all services →
            </a>
        </div>
    </div>

    <div class="grid grid-cols-2 gap-4 md:gap-8">
        <div class="rounded-3xl overflow-hidden">
            <img src="https://cdn.prod.website-files.com/6614055ffed6aec1f0c79429/661d6e507c2ff52de449b139_your-trusted-partner-in-pet-health-image-pet-x-webflow-template.png" alt="Doctor with pet" class="object-cover h-full w-full bg-yellow-300 transition transform hover:scale-105">
        </div>
        <div class="rounded-3xl overflow-hidden">
            <img src="https://cdn.prod.website-files.com/6614055ffed6aec1f0c79429/661d6e50b634bb7b8d5ba4c9_pet-health-image-pet-x-webflow-template-p-500.png" alt="Cute dog" class="object-cover h-full w-full bg-pink-300 transition transform hover:scale-105">
        </div>
    </div>
</section>

<section class="px-4 py-16 bg-gray-50 max-w-7xl mx-auto">
    <div class="text-center mb-12">
        <h2 class="text-4xl font-bold">Our Pet Services</h2>
        <p class="text-gray-600 mt-2">We provide everything your pet needs with love and professionalism.</p>
    </div>

    <div class="grid gap-6 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3">
<!--        JANJI TEMU-->
        <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition">
            <a href="#" class="absolute top-4 right-4 text-gray-400 hover:text-black"></a>
            <div class="text-purple-500 mb-4"></div>
            <h3 class="text-lg font-semibold text-purple-600">Janji Temu</h3>
            <p class="text-sm text-gray-600 mt-2 mb-6">Segera jadwalkan janji temu untuk hewan kesayangan Anda di Maison de Paw! Kami menyediakan layanan medis yang terpercaya dan perawatan penuh kasih untuk semua jenis hewan peliharaan.</p>
            <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 100.000,- /Jam</span>
        </div>

<!--        VAKSINASI-->
        <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition">
            <a href="#" class="absolute top-4 right-4 text-gray-400 hover:text-black"></a>
            <div class="text-yellow-500 mb-4"></div>
            <h3 class="text-lg font-semibold text-yellow-600">Vaksinasi</h3>
            <p class="text-sm text-gray-600 mt-2 mb-6">Jaga kesehatan hewan kesayangan Anda dengan layanan vaksinasi dari dokter hewan terpercaya. Tersedia untuk anjing, kucing, dan hewan peliharaan lainnya.</p>
            <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 125.000,- /Vaksin</span>
        </div>

<!--        RAWAT INAP-->
        <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition">
            <a href="#" class="absolute top-4 right-4 text-gray-400 hover:text-black">
            </a>
            <div class="text-blue-500 mb-4"></div>
            <h3 class="text-lg font-semibold text-blue-600">Rawat Inap</h3>
            <p class="text-sm text-gray-600 mt-2 mb-6">Kami menyediakan layanan rawat inap untuk hewan yang membutuhkan perawatan intensif dengan pengawasan dokter hewan 24 jam. Nyaman, aman, dan terpantau dengan baik.</p>
            <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 500.000,- /Visit</span>
        </div>

<!--        PENITIPAN HEWAN-->
        <div class="relative bg-white rounded-2xl p-6 shadow-md hover:shadow-xl transition lg:col-start-2">

            <a href="#" class="absolute top-4 right-4 text-gray-400 hover:text-black"></a>
            <div class="text-blue-500 mb-4"></div>
            <h3 class="text-lg font-semibold text-blue-600">Penitipan Hewan</h3>
            <p class="text-sm text-gray-600 mt-2 mb-6">Tinggalkan hewan kesayangan Anda dengan tenang! Layanan penitipan kami nyaman dan aman, dengan perawatan penuh kasih dari tim berpengalaman.</p>
            <span class="inline-block text-xs font-medium bg-gray-100 text-gray-800 rounded-full px-3 py-1">Rp 270.000,- /Visit</span>
        </div>
    </div>
</section>

</body>
</html>

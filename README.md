# MyShop - Flutter Mini E-Commerce App

A modern, multi-screen e-commerce mobile application built with Flutter as part of the Mobile Application Development course.

## Student Information
- **Project Name:** MyShop
- **Course:** Mobile Application Development
- **Student Name:** Bishal Khatri
- **Student ID:** 2510412191

---

## Description
MyShop is a feature-rich mini e-commerce application that allows users to browse products across various categories (Electronics, Accessories, Books, Jewellery, Shoes), view promotional carousel banners powered by external packages, inspect individual product details with ratings and descriptions, manage a shopping cart, and filter products dynamically.

---

## Features
- **Promotional Carousel:** Displays trending banners using `carousel_slider`.
- **Category Filtering:** Horizontal category selection and dynamic filtering.
- **Reusable Components:** Modular `ProductCard`, `CategoryItem`, and `BannerCarousel` widgets.
- **Product Details:** Detailed view showcasing images, prices, ratings with stars, and descriptions.
- **Shopping Cart:** Add items to cart, view cart list, and remove items.
- **Navigation & Data Passing:** Seamless navigation across Home, Category, Product Detail, and Cart screens.

---

## Packages Used
- **`carousel_slider` (^5.0.0):** Used for creating responsive and auto-playing promotional banner carousels on the home page.

---

## Project Structure
```text
lib/
├── data/
│   └── products.dart
├── models/
│   └── product.dart
├── screens/
│   ├── cart_page.dart
│   ├── category_page.dart
│   ├── home_page.dart
│   └── product_detail_page.dart
├── widget/
│   ├── banner_carousel.dart
│   ├── category_item.dart
│   └── product_card.dart
└── main.dart
```

---

## How to Run
1. Clone the repository:
   ```bash
   git clone https://github.com/username/mini-ecommerce-flutter.git
   ```
2. Navigate to the project directory:
   ```bash
   cd myshop
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

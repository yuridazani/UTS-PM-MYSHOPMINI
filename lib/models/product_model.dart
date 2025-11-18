import 'package:flutter/material.dart';

class Product {
  final String id;
  final String name;
  final String category;
  final IconData icon;
  final double price;

  const Product({
    required this.id,
    required this.name,
    required this.category,
    required this.icon,
    required this.price,
  });
}

const List<Product>  dummyProducts = [
  Product(id: 'p1', name: 'Burger', category: 'Makanan', icon: Icons.lunch_dining, price: 25000),
  Product(id: 'p2', name: 'Pizza', category: 'Makanan', icon: Icons.local_pizza, price: 75000),
  Product(id: 'p3', name: 'Ramen', category: 'Makanan', icon: Icons.ramen_dining, price: 45000),
  Product(id: 'p4', name: 'Donat', category: 'Makanan', icon: Icons.donut_large, price: 8000),
  
  Product(id: 'p5', name: 'Kopi Susu', category: 'Minuman', icon: Icons.coffee, price: 18000),
  Product(id: 'p6', name: 'Jus Jeruk', category: 'Minuman', icon: Icons.local_bar, price: 15000),
  Product(id: 'p7', name: 'Es Teh', category: 'Minuman', icon: Icons.emoji_food_beverage, price: 5000),
  
  Product(id: 'p8', name: 'Laptop', category: 'Elektronik', icon: Icons.laptop_mac, price: 12500000),
  Product(id: 'p9', name: 'Headphone', category: 'Elektronik', icon: Icons.headphones, price: 850000),
  Product(id: 'p10', name: 'Smartphone', category: 'Elektronik', icon: Icons.phone_android, price: 4200000),
  Product(id: 'p11', name: 'Smart Watch', category: 'Elektronik', icon: Icons.watch, price: 2100000),
];
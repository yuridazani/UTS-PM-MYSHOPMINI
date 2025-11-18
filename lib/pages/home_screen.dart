import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'product_list_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _goToProductList(BuildContext context, String category, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (ctx) => ProductListScreen(
          categoryName: category,
          categoryColor: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.porcelain,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.inkBlack.withValues(alpha: 0.5),
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'MyShop',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.w900,
                      height: 0.9,
                      color: AppColors.inkBlack,
                      letterSpacing: -2.5,
                    ),
                  ),
                  Text(
                    'Mini',
                    textAlign: TextAlign.center, 
                    style: TextStyle(
                      fontSize: 52,
                      fontWeight: FontWeight.w300,
                      height: 0.9,
                      color: AppColors.inkBlack.withValues(alpha: 0.3),
                      letterSpacing: -2.5,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                physics: const BouncingScrollPhysics(), 
                children: [
                  CategoryCard(
                    label: "Makanan",
                    icon: Icons.restaurant_menu_rounded,
                    color: AppColors.lightSeaGreen,
                    isLarge: true, 
                    height: 160, 
                    onTap: () => _goToProductList(context, "Makanan", AppColors.lightSeaGreen),
                  ),
                  const SizedBox(height: 16),

                  CategoryCard(
                    label: "Minuman",
                    icon: Icons.local_cafe_rounded,
                    color: AppColors.amberGlow,
                    height: 140,
                    onTap: () => _goToProductList(context, "Minuman", AppColors.amberGlow),
                  ),
                  const SizedBox(height: 16),

                  CategoryCard(
                    label: "Elektronik",
                    icon: Icons.devices_rounded,
                    color: AppColors.punchRed,
                    height: 140,
                    onTap: () => _goToProductList(context, "Elektronik", AppColors.punchRed),
                  ),
                  
                  const SizedBox(height: 30),
                ],
              ),
            ),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "© MyShop Mini 2025",
                style: TextStyle(
                  color: AppColors.inkBlack.withValues(alpha: 0.4),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final bool isLarge;
  final double? height; 

  const CategoryCard({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    required this.onTap,
    this.isLarge = false,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? (isLarge ? 180 : 140), 
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.12),
              blurRadius: 20,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Stack(
            children: [
              Positioned(
                right: -20,
                bottom: -20,
                child: Icon(
                  icon,
                  size: isLarge ? 180 : 140,
                  color: Colors.white.withValues(alpha: 0.25),
                ),
              ),
              
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center, 
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        icon, 
                        size: 32, 
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(), 
                    Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        letterSpacing: -1,
                        height: 1.1,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
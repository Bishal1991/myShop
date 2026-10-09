import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final VoidCallback onTap;

  const CategoryItem({
    super.key,
    required this.categoryName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 6.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.green.shade200),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green.shade800,
            ),
          ),
        ),
      ),
    );
  }
}

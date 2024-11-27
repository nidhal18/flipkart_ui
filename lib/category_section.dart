import 'package:flipkart_ui/category_item.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(5, (index) {
            return CategoryItem(
              icon: Icons.category,
              label: "Category $index",
            );
          }),
        ),
      ),
    );
  }
}

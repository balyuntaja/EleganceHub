import 'package:flutter/material.dart';
import 'package:flutter_shop_app/widget/item_categories.dart';

class Category {
  final String name;
  final IconData icon;
  final Color backgroundColor;

  Category(this.name, this.icon, this.backgroundColor);
}

class CategoryGrid extends StatelessWidget {
  final List<Category> categories = [
    Category("Foods", Icons.food_bank_rounded, Colors.green.shade100),
    Category("Gift", Icons.card_giftcard, Colors.red.shade100),
    Category("Fashion", Icons.shopping_bag, Colors.orange.shade100),
    Category("Gadget", Icons.devices, Colors.purple.shade100),
    Category(
        "See all", Icons.auto_awesome_mosaic_rounded, Colors.teal.shade100),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.8,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryItem(category: categories[index]);
        },
      ),
    );
  }
}

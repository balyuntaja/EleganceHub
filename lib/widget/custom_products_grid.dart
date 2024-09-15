import 'package:flutter/material.dart';
import 'package:flutter_shop_app/controllers/products_controller.dart';
import 'package:flutter_shop_app/pages/product_detail_page.dart';
import 'package:get/get.dart';

class BuildProductsGrid extends StatelessWidget {
  final ProductsController productsController = Get.put(ProductsController());
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 24),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
      ),
      itemCount: productsController.products.length,
      itemBuilder: (BuildContext context, int index) {
        final product = productsController.products[index];
        return GestureDetector(
          onTap: () {
            Get.to(() => ProductDetailPage(product: product));
          },
          child: Card(
            color: Colors.white,
            elevation: 0.0,
            child: Container(
              padding: EdgeInsets.all(16),
              margin: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(product['image']),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

               
                  Flexible(
                    child: Text(
                      product['title'],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 2),

                  Text(
                    "Rp. ${product['price']}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 8),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.yellow, size: 16),
                      SizedBox(width: 4),
                      Text(
                        product['rating']['rate'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "${product['rating']['count']} Reviews",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_shop_app/controllers/navigation_controller.dart';
import 'package:flutter_shop_app/pages/profile_pages.dart';
import 'package:flutter_shop_app/widget/banner_content.dart';
import 'package:flutter_shop_app/widget/custom_categories.dart';
import 'package:flutter_shop_app/widget/custom_products_grid.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_shop_app/controllers/products_controller.dart';

class HomePage extends StatelessWidget {
  final ProductsController productsController = Get.put(ProductsController());
  final NavigationController navigationController =
      Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        title: Text(
          "EleganceHub",
          style: GoogleFonts.dmSans(
            textStyle: TextStyle(
              color: Color(0xff3669C9),
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Color(0xFFFAFAFA),
                  ),
                  color: Color(0xFFFAFAFA),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Product Name',
                    hintStyle: TextStyle(
                      color: Color(0xffC8C8C8),
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 24),
            BannerContent(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'See All',
                      style: GoogleFonts.dmSans(
                        color: Color(0xff3669C9),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: CategoryGrid(),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Featured Product',
                            style: GoogleFonts.dmSans(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'See All',
                            style: GoogleFonts.dmSans(
                              color: Color(0xff3669C9),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    Expanded(
                      child: Obx(
                        () {
                          if (productsController.loading.value) {
                            return Center(child: CircularProgressIndicator());
                          }
                          if (productsController.products.isEmpty) {
                            return Center(child: Text('No Products Found!'));
                          }
                          return BuildProductsGrid();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: navigationController.currentIndex.value,
            onTap: (index) {
              if (index == 3) {
                Get.to(() => ProfilePage());
              } else {
                navigationController.changeIndex(index);
              }
            },
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xff3669C9),
            unselectedItemColor: Colors.black,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border),
                label: 'WISHLIST',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined),
                label: 'ORDER',
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/image/user_avatar.jpeg'),
                ),
                label: 'ACCOUNT',
              ),
            ],
          )),
    );
  }
}

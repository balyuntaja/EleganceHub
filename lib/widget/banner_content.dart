import 'package:flutter/material.dart';
import 'package:flutter_shop_app/model/banner_model.dart';
import 'package:flutter_shop_app/widget/custom_banner_image.dart';

class BannerContent extends StatelessWidget {
  const BannerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: banner.length,
        itemBuilder: (context, index) => CustomBannerImage(
          margin: EdgeInsets.only(left: index == 24 ? 0 : 16),
          padding: EdgeInsets.all(10),
          width: 315,
          height: 150,
          urlImage: banner[index].url,
        ),
      ),
    );
  }
}

import 'package:flutter_shop_app/config/app_assets.dart';

class BannerModel {
  final String url;

  BannerModel({required this.url});
}

List<BannerModel> banner = [
  BannerModel(
    url: AppAssets.banner,
  ),
  BannerModel(
    url: AppAssets.banner2,
  ),
];

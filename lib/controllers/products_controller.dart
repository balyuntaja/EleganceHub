import 'package:flutter_shop_app/controllers/product_repository.dart';
import 'package:get/get.dart';

class ProductsController extends GetxController {
  ProductRepository productRepository = ProductRepository();
  RxBool loading = false.obs;
  List products = [].obs;
  var showGrid = false.obs;
  ProductsController() {
    loadProductsFromRepo();
  }

  loadProductsFromRepo() async {
    loading(true);
    products = await productRepository.loadProductsFromApi();
  loading(false);
  }
  toggleGrid(){
    showGrid(!showGrid.value);
  }
}

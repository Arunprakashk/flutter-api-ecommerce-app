import 'package:get/get.dart';
import 'package:shop_me/services/http_service.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = [].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await HttpService.fetchProducts();
      productList.value = products;
    } finally {
      isLoading(false);
    }
  }
}

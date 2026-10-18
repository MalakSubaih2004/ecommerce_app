import 'package:ecommerce_app/models/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Product>[].obs;

  void addToCart(Product product) {
    var existingIndex = cartItems.indexWhere(
      (element) => element.id == product.id,
    );
    if (existingIndex >= 0) {
      cartItems[existingIndex].quantity.value++;
    } else {
      cartItems.add(product);
    }
  }

  void removeFromCart(Product product) {
    cartItems.remove(product);
  }

  void incrementQuantity(Product product) {
    product.quantity.value++;
  }

  void decrementQuantity(Product product) {
    if (product.quantity.value > 1) {
      product.quantity.value--;
    } else {
      removeFromCart(product);
    }
  }

  double get subTotal => cartItems.fold(
    0,
    (sum, item) => sum + (item.price * item.quantity.value),
  );

  double get shippingFee => cartItems.isNotEmpty ? 60.0 : 0.0;

  double get total => subTotal + shippingFee;
}

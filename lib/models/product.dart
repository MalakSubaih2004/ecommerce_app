import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Product {
  final String id;
  final String title;
  final String size;
  final double price;
  final String imagePath;
  RxInt quantity;

  Product({
    required this.id,
    required this.title,
    required this.size,
    required this.price,
    required this.imagePath,
    int initialQuantity = 1,
  }) : quantity = initialQuantity.obs;
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/cart_controller.dart';
import 'screens/login_screen.dart';
import 'screens/create_account_screen.dart';
import 'screens/discover_screen.dart';

void main() {
  Get.put(CartController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_screen',
      getPages: [
        GetPage(name: '/login_screen', page: () => LoginScreen()),
        GetPage(
          name: '/create_account_screen',
          page: () => CreateAccountScreen(),
        ),
        GetPage(name: '/discover_screen', page: () => DiscoverScreen()),
      ],
    );
  }
}

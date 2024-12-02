import 'package:flipkart_ui/buy_option.dart';
import 'package:flipkart_ui/home_screen.dart';
import 'package:flipkart_ui/splash_screen.dart';
import 'package:flutter/material.dart';
import 'product_details.dart';
import 'cart_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/splash': (context) => const SplashScreen(),
      '/': (context) => const HomeScreen(),
      '/productDetails': (context) => const ProductDetails(),
      '/cart': (context) => const CartPage(),
      '/buyOptions': (context) => const BuyOption(),
    },
  ));
}

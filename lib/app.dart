import 'package:coffee_shop_app/screens/ui/login.dart';
import 'package:flutter/material.dart';

class CoffeeShopApp extends StatefulWidget {
  const CoffeeShopApp({super.key});

  @override
  State<CoffeeShopApp> createState() => _CoffeeShopAppState();
}

class _CoffeeShopAppState extends State<CoffeeShopApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}

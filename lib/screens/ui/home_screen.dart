import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'images/top.png',
                  height: 70,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'House signature',
                style: TextStyle(fontWeight: FontWeight.w700,fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

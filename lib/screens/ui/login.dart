import 'package:coffee_shop_app/utils/colors.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                width: 90,
                child: Image.asset('images/logo.png'),
              ),
              const SizedBox(
                height: 50,
                child: Text(
                  'KOKUMI',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              const Text(
                'The best',
                style: TextStyle(
                  height: 0.7,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: buttonColor,
                      ),
                      child: const Center(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: buttonColor ),
                      ),
                      child: const Center(
                        child: Text(
                          'Register',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}

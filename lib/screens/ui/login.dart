import 'package:coffee_shop_app/screens/ui/home_screen.dart';
import 'package:coffee_shop_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
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
                        border: Border.all(color: buttonColor),
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
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              socialMideaButton(
                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                  Colors.white,
                  'Connect With Google',
                  Colors.black),
              const SizedBox(
                height: 25,
              ),
              socialMideaButton(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/2021_Facebook_icon.svg/2048px-2021_Facebook_icon.svg.png',
                  facebookButtondColor,
                  'Connect With Google',
                  Colors.white),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Image.asset('images/login_coffee.png'),
              )
            ],
          ),
        ),
      )),
    );
  }

  void _onTapLogin() {
    Get.offAll(const HomeScreen());
  }

  Container socialMideaButton(image, color, title, textColor) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 25,
          ),
          Image.network(
            image,
            height: 25,
          ),
          const SizedBox(
            width: 25,
          ),
          Text(
            title,
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: textColor),
          )
        ],
      ),
    );
  }
}

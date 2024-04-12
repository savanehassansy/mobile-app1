import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/app/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Center(
            child: Image.asset(
              "assets/img/whatsap-removebg-preview.png",
              width: 250,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}

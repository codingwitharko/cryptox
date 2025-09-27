import 'package:animate_do/animate_do.dart';
import 'package:cryptox/app/core/constants/app_colors.dart';
import 'package:cryptox/app/core/constants/app_images.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      extendBodyBehindAppBar: false,
      backgroundColor: AppColors.background,
      appBar: AppBar(toolbarHeight: 0.0, backgroundColor: AppColors.background),
      bottomNavigationBar:FadeInUp(child: GestureDetector(
        onTap: (){
          Get.toNamed(Routes.HOME);
        },
        child:  Container(
        margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 36.0),
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: AppColors.primary,
        ),
        height: 52.0,
        child: Text(
          'Get Started',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
      ),
      ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(vertical: 24.0),
        child: Column(
          children: [
            FadeInRight(child: Container(
              margin: EdgeInsets.only(left: 24.0),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text.rich(
                TextSpan(
                  text: 'Crypt',
                  style: TextStyle(
                      letterSpacing: 2,
                      fontSize: 80, fontWeight: FontWeight.w900),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'X',
                      style: TextStyle(
                        fontSize: 80,
                        letterSpacing: 2,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ),

            FadeInRightBig(child:
            Container(
              width: double.infinity,
              alignment: Alignment.centerRight,
              child: Image.asset(
                AppImages.shape,
                fit: BoxFit.cover,
                height: 360,
              ),
            ),
            ),
            FadeInLeftBig(child: Container(
              margin: EdgeInsets.only(top: 24.0, right: 24.0, left: 24.0),

              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                'Jump start your\ncrypto portfolio',
                style: TextStyle(
                  fontSize: 32,
                  wordSpacing: 2,
                  letterSpacing: 2,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            ),
            FadeInUpBig(child:Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                'Take your investment portfolio\nto next level',
                style: TextStyle(
                  fontSize: 14,
                  wordSpacing: 2,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

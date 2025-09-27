import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_images.dart';
import '../controllers/home_controller.dart';

class ExchangeView extends GetView<HomeController> {
  const ExchangeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        title:  FadeInLeft(
          child: Container(
          margin: EdgeInsets.only(right: 8.0, left: 8.0),
          child: Text(
            'Trading',
            style: TextStyle(
              fontSize: 28,
              letterSpacing: 0.4099999964237213,
              height: 1,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
        ),

        actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 24.0),
        actions: [
          FadeInRight(
            child:  Image.asset(
            AppIcons.setting,
            height: 24.0,
            width: 24.0,
            fit: BoxFit.cover,
          ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ElasticInLeft(
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'BTC',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    Container(
                      height: 2.0,
                      width: 24.0,
                      color: AppColors.primary,
                    ),
                  ],
                ),
                Text(
                  'ETH',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  'LTC',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  'XRP',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                Text(
                  'EOS',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            ),
            FadeInLeft(
              child:  listTile(
              icon: AppIcons.btc,
              title: 'Bitcoin',
              subtitle: 'BTC',
              price: '\$26927',
              count: '2.05 BTC',
            ),
            ),

            FlipInY(
              child:Container(
              height: 260,
              width: double.infinity,
              margin: EdgeInsetsGeometry.symmetric(vertical: 16.0),
              child: Image.asset(AppImages.gr, fit: BoxFit.fill),
            ),
            ),
            SizedBox(height: 24.0),

            Row(
              children: [
                Expanded(
                  child:BounceInLeft(
                    child:  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        color: AppColors.primary,
                      ),
                      height: 40.0,
                      child: Text(
                        'Buy',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                  ),
                  ),
                ),
                SizedBox(width: 16.0),

                Expanded(
                  child:  BounceInRight(
                    child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: AppColors.white),
                      ),
                      height: 40.0,
                      child: Text(
                        'Sell',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24.0),
            FadeInLeft(
              delay: Duration(milliseconds: 300),
              child:  Text(
              'At Price | USD',
              style: TextStyle(
                fontSize: 13,
                color: AppColors.secondary,

                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            ),
            SizedBox(height: 4.0),
            FadeInLeft(
              delay: Duration(milliseconds: 500),
              child:  Text(
              '0.031',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
            ),
            FadeInLeft(
              delay: Duration(milliseconds: 700),
              child: Divider(color: AppColors.secondary),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FadeInLeft(
                      delay: Duration(milliseconds: 300),
                      child: Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: 13,
                        color: AppColors.secondary,

                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    ),
                    SizedBox(height: 4.0),
                    FadeInLeft(
                      delay: Duration(milliseconds: 500),
                      child: Text(
                      '345 USD',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    ),
                  ],
                ),
                Expanded(child: Container()),
                Expanded(
                  child:  FlipInY(
                    child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        '25%',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '50%',
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.secondary,

                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      Text(
                        '100%',
                        style: TextStyle(
                          fontSize: 11,
                          color: AppColors.secondary,

                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listTile({
    required String icon,
    required String title,
    required String subtitle,
    required String price,
    required String count,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsetsGeometry.symmetric(vertical: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 48.0,
              height: 48.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.0),
                color: AppColors.card,
              ),
              child: Center(child: Image.asset(icon, fit: BoxFit.contain)),
            ),
            SizedBox(width: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.secondary,

                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(
                  count,
                  style: TextStyle(
                    fontSize: 10,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

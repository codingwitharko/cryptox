import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../core/constants/app_images.dart';
import '../controllers/home_controller.dart';

class DashboardView extends GetView<HomeController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        automaticallyImplyLeading: false,
        leadingWidth: 96.0,
        leading: FadeInLeft(
          child: Container(
            margin: EdgeInsets.only(right: 24.0, left: 24.0),
            height: 48.0,
            width: 48.0,
            child: Center(
              child: Image.asset(
                AppImages.avatar,
                height: 48.0,
                width: 48.0,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        actionsPadding: EdgeInsetsGeometry.symmetric(horizontal: 24.0),
        actions: [
          FadeInRight(
            child: Image.asset(
              AppIcons.setting,
              height: 24.0,
              width: 24.0,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(right: 24.0, left: 24.0),

            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.wave), // local image
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElasticInLeft(
                  child: Container(
                    margin: EdgeInsets.only(top: 16.0),
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Hello Alex',
                      style: TextStyle(
                        fontSize: 24,

                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
                FlipInY(
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    padding: EdgeInsets.symmetric(
                      vertical: 12.0,
                      horizontal: 20.0,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppImages.card), // local image
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Current Balance',
                          style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0,
                            color: AppColors.background,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          children: [
                            Text(
                              '\$87,430.12',
                              style: TextStyle(
                                fontSize: 24,
                                color: AppColors.background,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            SizedBox(width: 24.0),
                            Image.asset(
                              AppIcons.arrowUp,
                              height: 12.0,
                              width: 12.0,
                              fit: BoxFit.fill,
                              color: AppColors.primary,
                            ),
                            Text(
                              '10.2%',
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    Expanded(
                      child: BounceInLeft(
                        child: GestureDetector(
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
                              'Deposit',
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
                      child: BounceInRight(
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
                              'Withdraw',
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
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 40.0,
              bottom: 16.0,
              right: 24.0,
              left: 24.0,
            ),

            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BounceInLeft(
                  child: Text(
                  'Holdings',
                  style: TextStyle(
                    fontSize: 20,
                    wordSpacing: 0,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                ),
                BounceInRight(
                  child:   TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: AppColors.white,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                ),
              ],
            ),
          ),

          FadeInLeft(
            delay: Duration(milliseconds: 300),
            child:  listTile(
            icon: AppIcons.eth,
            title: 'Ethereum',
            subtitle: 'ETH',
            graph: AppImages.graphEth,
            price: '\$503.12',
            count: '50 ETH',
          ),
          ),
          FadeInLeft(
            delay: Duration(milliseconds: 500),
            child: listTile(
            icon: AppIcons.btc,
            title: 'Bitcoin',
            subtitle: 'BTC',
            graph: AppImages.graphBtc,
            price: '\$26927',
            count: '2.05 BTC',
          ),
          ),
          FadeInLeft(
            delay: Duration(milliseconds: 700),
            child: listTile(
            icon: AppIcons.liteC,
            title: 'Litecoin',
            subtitle: 'LTC',
            graph: AppImages.graphEth,
            price: '\$6927',
            count: '2.05 LTC',
          ),
          ),
          FadeInLeft(
            delay: Duration(milliseconds: 900),
            child:  listTile(
            icon: AppIcons.rpl,
            title: 'Ripple',
            subtitle: 'XRP',
            graph: AppImages.graphEth,
            price: '\$4637',
            count: '2.05 XRP',
          ),
          ),
        ],
      ),
    );
  }

  Widget listTile({
    required String icon,
    required String title,
    required String subtitle,
    required String graph,
    required String price,
    required String count,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsetsGeometry.symmetric(horizontal: 24.0, vertical: 16.0),
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
            Image.asset(graph, fit: BoxFit.contain, width: 66.0),
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

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_icons.dart';
import '../../../data/enums/home_tab.dart';
import '../controllers/home_controller.dart';
import 'dashboard_view.dart';
import 'exchange_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Obx(() => getActiveTab()),
      bottomNavigationBar:  Obx(() => FadeInUpBig(
        child: BottomNavigationBar(
          currentIndex: controller.activeTab.value.index,
          onTap: (index) {
            controller.activeTab.value = HomeTab.values[index];
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppColors.card,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: AppColors.white,
          enableFeedback: false,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(AppIcons.dashboard),
              activeIcon: Image.asset(
                AppIcons.dashboard,
                color: AppColors.primary,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppIcons.exchange),
              activeIcon: Image.asset(
                AppIcons.exchange,
                color: AppColors.primary,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(AppIcons.person),
              activeIcon: Image.asset(
                AppIcons.person,
                color: AppColors.primary,
              ),
              label: '',
            ),
          ],
        ),
      ),
      ),
    );
  }

  GetView<HomeController> getActiveTab() {
    switch (controller.activeTab.value) {
      case HomeTab.dashboard:
        return DashboardView();

      case HomeTab.exchange:
        return ExchangeView();

      case HomeTab.profile:
        return DashboardView();
    }
  }
}

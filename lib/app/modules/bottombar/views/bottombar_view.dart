import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travel/app/modules/home/views/home_view.dart';
import 'package:travel/app/modules/setting/views/setting_view.dart';
import 'package:travel/app/modules/welcome/views/welcome_view.dart';

import '../controllers/bottombar_controller.dart';

class BottombarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottombarController>(builder: (controller) {
      return Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex(),
            children: [
              HomeView(),
              WelcomeView(),
              SettingView(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.grey[600],
          selectedItemColor: Colors.blue[300],
          onTap: controller.changeTabindex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.tabIndex(),
          items: [
            _bottomNavigator(icon: CupertinoIcons.home, label: "Home"),
            _bottomNavigator(icon: CupertinoIcons.bookmark_fill, label: "Home"),
            _bottomNavigator(icon: CupertinoIcons.settings, label: "Home"),
          ],
        ),
      );
    });
  }

  _bottomNavigator({required IconData icon, required String label}) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}

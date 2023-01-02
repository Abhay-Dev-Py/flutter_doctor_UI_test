import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../demo_screen/views.dart';
import '../../doctor_list/views/doctor_list_view.dart';
import '../../home/views/home_view.dart';

class MyAppController extends GetxController {
  List<Widget> screen() {
    return [
      const HomeView(),
      const FilePage(),
      const FilePage(),
      const DoctorListView(),
      const SettingPage(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem() {
    return [
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.home),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.folder_circle),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.add),
          activeColorSecondary: Colors.white,
          // activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.white),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.chat_bubble_text),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemGrey),
      PersistentBottomNavBarItem(
          icon: const Icon(CupertinoIcons.settings),
          activeColorPrimary: Colors.blue,
          inactiveColorPrimary: CupertinoColors.systemGrey)
    ];
  }
}

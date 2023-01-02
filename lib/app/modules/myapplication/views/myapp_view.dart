import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../controllers/myapp_controller.dart';

class MyAppView extends GetView<MyAppController> {
  const MyAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PersistentTabView(
      context,
      screens: controller.screen(),
      items: controller.navBarItem(),
      navBarStyle: NavBarStyle.style17,
    ));
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Setting ',
      style: GoogleFonts.poppins(fontSize: 30.sp),
    ));
  }
}

class FilePage extends StatelessWidget {
  const FilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'FilePage ',
        style: GoogleFonts.poppins(fontSize: 30.sp),
      ),
    );
  }
}

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'ChatPage ',
        style: GoogleFonts.poppins(fontSize: 30.sp),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/routes/app_pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/common/strings.dart';
import 'app/modules/myapplication/bindings/myapp_binding.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, __) => GetMaterialApp(
        title: Strings.appName,
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        initialBinding: MyAppBinding(),
      ),
    );
  }
}

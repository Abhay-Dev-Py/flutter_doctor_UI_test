import 'package:flutter_getx_template/app/modules/home/bindings/home_binding.dart';
import 'package:flutter_getx_template/app/modules/home/views/home_view.dart';
import 'package:flutter_getx_template/app/modules/myapplication/bindings/myapp_binding.dart';
import 'package:get/get.dart';

import '../modules/doctor_detail/bindings/doctor_detail_binding.dart';
import '../modules/doctor_detail/views/doctor_detail_view.dart';
import '../modules/myapplication/views/myapp_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  const AppPages._();

  static const INITIAL = Routes.MyApplication;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DOCTORDETAIL,
      page: () => DoctorDetailView('dr.Kabuto Yakushi', 'Heart Specialist'),
      binding: DoctorDetailBinding(),
    ),
    GetPage(
        name: _Paths.MyApplication,
        page: () => MyAppView(),
        binding: MyAppBinding())
  ];
}

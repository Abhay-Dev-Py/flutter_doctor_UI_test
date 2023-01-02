import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/common/util/exports.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/modules/widgets/base_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../doctor_detail/views/doctor_detail_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: ListView(
            children: [
              _buildHeader(),
              _buildSearchBar(),
              _buildListHeader(),
              _buildHeaderLine('Appointment Today', 'Sell All'),
              _buildCard(context),
              _buildHeaderLine('Top Doctor\'s for you', 'Sell All'),
              _buildsSecondCard()
            ],
          ),
        ),
      ),
    ));
  }
}

Widget _buildHeader() {
  return Padding(
    padding: EdgeInsets.only(bottom: 18.0.h, top: 5.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.helloLuke,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 34.sp),
            ),
            Text(
              'How do you feel today?',
              style: GoogleFonts.poppins(color: Colors.grey, fontSize: 20.sp),
            )
          ],
        ),
        SizedBox(
          width: 70.w,
          height: 70.h,
          child: const CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/female.png',
            ),
          ),
        )
      ],
    ),
  );
}

Widget _buildSearchBar() {
  return Padding(
    padding: EdgeInsets.only(bottom: 10.h),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white.withOpacity(0.5)),
        borderRadius: BorderRadius.all(
          Radius.circular(10.r),
        ),
      ),
      height: 50.h,
      child: const TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 15),
          hintText: 'Search here..',
          fillColor: Colors.transparent,
          iconColor: Colors.grey,
          prefixIcon: Icon(Icons.search, size: 40, color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    ),
  );
}

Widget _buildListHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _buildReapated(Strings.hospital, Icons.local_hospital, Colors.red),
      _buildReapated(Strings.consutant, Icons.monitor_heart, Colors.blue),
      _buildReapated(
          Strings.recipe, Icons.calendar_view_day_rounded, Colors.yellow),
      _buildReapated(Strings.appointment, Icons.folder, Colors.green),
    ],
  );
}

Widget _buildReapated(String title, IconData icon, Color color) {
  return Column(
    children: [
      SizedBox(
        width: 70.w,
        height: 100.h,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(
            icon,
            size: 40,
            color: color,
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          vertical: 8.h,
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      )
    ],
  );
}

Widget _buildHeaderLine(String title, String seeAll) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 20.h,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          seeAll,
          style: GoogleFonts.poppins(
            color: Colors.blue,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    ),
  );
}

Widget _buildCard(BuildContext context) {
  return Stack(
    children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent.shade100,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.r,
              ),
            ),
          ),
          height: 180.h,
          width: MediaQuery.of(context).size.width - 60,
        ),
      ),
      Positioned(
        top: 0.h,
        left: 0.w,
        child: Container(
          height: 170.h,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(
              Radius.circular(
                20.r,
              ),
            ),
          ),
          width: MediaQuery.of(context).size.width - 30.w,
          child: _buildCardDetail(),
        ),
      ),
    ],
  );
}

Widget _buildCardDetail() {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 8.h,
      horizontal: 20.w,
    ),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            bottom: 8.0.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60.w,
                height: 60.h,
                child: const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/female.png'),
                ),
              ),
              SizedBox(
                width: 60.w,
                height: 60.h,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: Icon(
                    Icons.message,
                    size: 30.w,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              Strings.doctorName,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22.sp,
              ),
            ),
            Text(
              Strings.time1030,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 22.sp,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Dental Specialist',
                style: GoogleFonts.poppins(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 20.sp,
                ),
              ),
              Text(
                '01.10.2022',
                style: GoogleFonts.poppins(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 20.sp,
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget _buildsSecondCard() {
  return GestureDetector(
    onTap: () {
      Get.to(DoctorDetailView('dr.Kabuto Yakushi', 'Heart Specialist'));
    },
    child: Container(
      height: 150.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.r,
          ),
        ),
      ),
      width: double.infinity,
      child: _buildSecondCardDetail(),
    ),
  );
}

_buildSecondCardDetail() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 100.w,
            child: Image.asset('assets/images/doctor.png'),
            height: 100.w,
            color: Colors.transparent),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 8.0.h),
              child: Text('Heart Specialist',
                  style: GoogleFonts.poppins(
                      color: Colors.grey.withOpacity(0.5), fontSize: 18.sp)),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8.0.h),
              child: Text('dr.Kabuto Yakushi',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold)),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.yellow),
                Text('4.8 127 Reviews',
                    style: GoogleFonts.poppins(
                        color: Colors.black, fontSize: 18.sp))
              ],
            )
          ],
        )
      ],
    ),
  );
}

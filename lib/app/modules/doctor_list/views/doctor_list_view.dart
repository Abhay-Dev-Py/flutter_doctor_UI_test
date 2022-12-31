import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_template/app/common/util/exports.dart';
import 'package:flutter_getx_template/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_getx_template/app/modules/widgets/base_widget.dart';
import 'package:flutter_getx_template/app/modules/widgets/custom_appbar_widget.dart';
import 'package:get/get.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/doctor_list_controller.dart';

class DoctorListView extends GetView<DoctorListController> {
  const DoctorListView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              _buildHeader(),
              _buildSearchbar(),
              Expanded(
                child: ListView.separated(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    if (index % 2 == 0) {
                      return _buildListRow(true, false);
                    } else {
                      return _buildListRow(false, true);
                    }
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 10,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDot() {
  return Container(
    decoration:
        const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
    width: 15 / 2,
    height: 15 / 2,
  );
}

Widget _buildHeader() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Chat',
        style: TextStyle(fontSize: 30.sp),
      ),
      Container(
        width: 40.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(5.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildDot(),
            _buildDot(),
            _buildDot(),
          ],
        ),
      )
    ],
  );
}

Widget _buildSearchbar() {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: 285.w,
          height: 50.h,
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              hintStyle: const TextStyle(color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 15.h),
              hintText: 'Search here..',
              iconColor: Colors.grey,
              prefixIcon: Icon(Icons.search, size: 40.w, color: Colors.grey),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(5.r),
            ),
          ),
          width: 50.w,
          height: 50.h,
          child: const Icon(
            CupertinoIcons.pencil_ellipsis_rectangle,
            size: 40,
          ),
        )
      ],
    ),
  );
}

Widget _buildListRow(
  bool notifcationflag,
  bool online,
) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(5.r),
      ),
    ),
    padding: EdgeInsets.symmetric(
      vertical: 10.h,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Stack(
          children: [
            SizedBox(
              width: 70.w,
              height: 70.h,
              //   color: Colors.black,
              child: const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/doctor.png',
                ),
              ),
            ),
            Positioned(top: 20.h, child: _buildDot())
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'dr. Ino Yamanaka',
              style: GoogleFonts.poppins(
                  fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
            const Text('Ready to check out today?')
          ],
        ),
        Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '10:20 AM',
                style: TextStyle(fontSize: 16.sp, color: Colors.grey),
              ),
              SizedBox(
                height: 10.h,
              ),
              notifcationflag
                  ? SizedBox(
                      width: 20.w,
                      height: 20.h,
                      child: const CircleAvatar(child: Text('1')))
                  : const SizedBox()
            ],
          ),
        )
      ],
    ),
  );
}

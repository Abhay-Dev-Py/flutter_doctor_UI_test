import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controllers/doctor_detail_controller.dart';

class DoctorDetailView extends GetView<DoctorDetailController> {
  final String doctorName;
  final String post;
  const DoctorDetailView(this.doctorName, this.post, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: GestureDetector(
                onTap: Get.back,
                child: Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent[100],
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 150,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25.r),
                    topLeft: Radius.circular(25.r),
                  ),
                  color: Colors.white,
                ),
                child: const Text(''),
              ),
            ),

            Positioned(
              top: 100,
              left: (MediaQuery.of(context).size.width - 100) / 2,
              child: SizedBox(
                width: 100.w,
                height: 100.w,
                child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    'assets/images/doctor.png',
                  ),
                ),
              ),
            ),

            Positioned(
              top: 170.h,
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.h),
                      child: Text(
                        doctorName,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.h),
                      child: Text(post,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 20.sp,
                          )),
                    ),
                    _buildRowCard(context),
                    _buildAboutDoctor(context, 'About Doctor'),
                    _buildDoctorDecr(context),
                    _buildAboutDoctor(context, 'Select Schedule'),
                    _buildDateRow(context),
                    _buildMorningTitle(context),
                    _buildTimerRow(context)
                  ],
                ),
              ),
            ),
            //     Positioned(bottom: 0, left: 0, child: _buildDateRow(context))
          ],
        ),
      ),
    );
  }

  Widget _buildMorningTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text('Morning',
            textAlign: TextAlign.start,
            style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget _buildRowCard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Container(
          width: MediaQuery.of(context).size.width - 30,
          height: 80.h,
          decoration: BoxDecoration(
              color: Colors.blue.shade200.withOpacity(0.2),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Patient',
                      style: GoogleFonts.poppins(
                          color: Colors.blue.withOpacity(0.4), fontSize: 20.sp),
                    ),
                    Text(
                      '1,560',
                      style: GoogleFonts.poppins(
                          color: Colors.blue.withOpacity(0.8),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0.h),
                  child: Container(
                    width: 2.w,
                    color: Colors.lightBlue,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Experience',
                      style: GoogleFonts.poppins(
                          color: Colors.blue.withOpacity(0.4), fontSize: 20.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          '10',
                          style: GoogleFonts.poppins(
                              color: Colors.blue.withOpacity(0.8),
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'yrs',
                          style: GoogleFonts.poppins(
                              color: Colors.blue.withOpacity(0.8),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0.h),
                  child: Container(
                    width: 2.w,
                    color: Colors.lightBlue,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Rating',
                      style: GoogleFonts.poppins(
                          color: Colors.blue.withOpacity(0.4), fontSize: 20.sp),
                    ),
                    Text(
                      '4.8',
                      style: GoogleFonts.poppins(
                          color: Colors.blue.withOpacity(0.8),
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ]),
        ));
  }

  _buildAboutDoctor(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, bottom: 10.h, left: 10.w),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Text(
          title,
          style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontSize: 24.sp),
        ),
      ),
    );
  }

  Widget _buildDoctorDecr(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: RichText(
          text: TextSpan(
              text:
                  'Dr kabuto is a well-know and experienced\ndoctor in the field of liver specialists. He comes from Japan and is widely know... ',
              style: GoogleFonts.poppins(
                fontSize: 15.sp,
                color: Colors.grey,
              ),
              children: [
                TextSpan(
                  text: " Read More",
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    color: Colors.blue,
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  Widget _buildDateRow(BuildContext context) {
    // return _abc(context);
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: DatePicker(
        DateTime.now(),
        width: 60,
        height: 80,
        controller: controller.controller,
        initialSelectedDate: DateTime.now(),
        selectionColor: Colors.blue,
        selectedTextColor: Colors.white,
        onDateChange: (date) {
          // New date selected
          controller.selectedValue.value = date;
        },
      ),
    );
  }

  Widget _buildTimerRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0).w,
      child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50.h,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (int i = 0; i < 6; i++) _buildTimer(controller.timer[i])
              ],
            ),
          )),
    );
  }

  Widget _buildTimer(String time) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.0.w),
      child: GestureDetector(
        onTap: () {
          controller.selectedTime.value = time;
        },
        child: Card(
          elevation: setTimeElevation(time),
          color: Colors.transparent,
          child: Container(
            decoration: BoxDecoration(
              color: setColor(time),
              borderRadius: BorderRadius.all(
                Radius.circular(12.r),
              ),
            ),
            width: 80.w,
            height: 35.h,
            child: Center(
              child: Text(
                time,
                style: GoogleFonts.poppins(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: setFontColor(time),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color setColor(String time) {
    if (time == controller.selectedTime.value) {
      return Colors.blue;
    } else {
      return Colors.white;
    }
  }

  Color setFontColor(String time) {
    if (time == controller.selectedTime.value) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  double setTimeElevation(String time) =>
      time == controller.selectedTime.value ? 4.0 : 0.0;
}

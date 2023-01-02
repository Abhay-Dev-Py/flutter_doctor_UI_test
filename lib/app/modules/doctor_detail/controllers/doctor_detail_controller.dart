

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:get/get.dart';

class DoctorDetailController extends GetxController {
  Rx<DateTime> selectedValue = DateTime.now().obs;
  DatePickerController controller = DatePickerController();


  DatePickerController datePickerController = DatePickerController();
  
  RxString selectedTime = '10:00 AM'.obs;
  List timer = [
    '08:00 AM',
    '09:00 AM',
    '10:00 AM',
    '11:00 AM',
    '12:00 AM',
    '01:00 PM',
    '02:00 PM',
    '03:00 PM',
    '04:00 PM',
    '05:00 PM',
    '06:00 PM',
    '07:00 PM'
        '08:00 PM',
    '09:00 PM',
    '10:00 PM'
        '11:00 PM'
  ];
}

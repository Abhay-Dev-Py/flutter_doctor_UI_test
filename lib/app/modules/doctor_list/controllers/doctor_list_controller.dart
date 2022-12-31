import 'package:get/get.dart';

class DoctorListController extends GetxController {
  Rx<DateTime> selectedValue = DateTime.now().obs;

  final RxList _dataList = RxList();
  List<dynamic> get dataList => _dataList;
  set dataList(List<dynamic> dataList) => _dataList.addAll(dataList);
}

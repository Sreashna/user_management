import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CheckInController extends GetxController {
  final name = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final company = TextEditingController();

  RxString selectedPurpose = "".obs;

  bool validate() {
    if (name.text.isEmpty ||
        phone.text.isEmpty ||
        email.text.isEmpty ||
        company.text.isEmpty ||
        selectedPurpose.value.isEmpty) {

      Get.snackbar("Missing Fields", "Please fill all fields",
          backgroundColor: Colors.redAccent,
          colorText: Colors.white);

      return false;
    }
    return true;
  }
}

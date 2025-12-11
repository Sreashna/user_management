import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  final email = TextEditingController();
  final password = TextEditingController();

  bool validate() {
    if (email.text.trim().isEmpty) {
      _error("Please enter your email");
      return false;
    }

    if (!GetUtils.isEmail(email.text.trim())) {
      _error("Please enter a valid email address");
      return false;
    }

    if (password.text.trim().isEmpty) {
      _error("Please enter your password");
      return false;
    }

    return true;
  }

  void _error(String message) {
    Get.snackbar(
      "Invalid Input",
      message,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16),
    );
  }
}

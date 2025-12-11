import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final fullName = TextEditingController();
  final phone = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  bool validate() {
    if (fullName.text.trim().isEmpty) {
      _error("Please enter your full name");
      return false;
    }

    if (phone.text.trim().isEmpty) {
      _error("Please enter your mobile number");
      return false;
    }

    if (phone.text.length != 10) {
      _error("Mobile number must be 10 digits");
      return false;
    }

    if (email.text.trim().isEmpty) {
      _error("Please enter an email address");
      return false;
    }

    if (!GetUtils.isEmail(email.text.trim())) {
      _error("Please enter a valid email");
      return false;
    }

    if (password.text.isEmpty) {
      _error("Please enter a password");
      return false;
    }

    if (confirmPassword.text.isEmpty) {
      _error("Please confirm your password");
      return false;
    }

    if (password.text != confirmPassword.text) {
      _error("Passwords do not match");
      return false;
    }

    return true;
  }

  void _error(String msg) {
    Get.snackbar(
      "Invalid Input",
      msg,
      backgroundColor: Colors.redAccent,
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
      margin: const EdgeInsets.all(16),
    );
  }
}

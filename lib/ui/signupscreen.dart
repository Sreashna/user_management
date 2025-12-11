import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/signup_controller.dart';
import '../custom_widgets/custom_primarybutton.dart';
import '../custom_widgets/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
        child: Column(
          children: [
            CustomTextField(
              labelText: 'Full Name',
              hintText: 'Louis Litt',
              controller: controller.fullName,
            ),

            CustomTextField(
              labelText: 'Mobile Number',
              hintText: '8989898989',
              keyboardType: TextInputType.phone,
              controller: controller.phone,
            ),

            CustomTextField(
              labelText: 'Email Address',
              hintText: 'Louisllitt@email.com',
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
            ),

            CustomTextField(
              labelText: 'Password',
              hintText: 'Hjias&&8989',
              obscureText: true,
              controller: controller.password,
            ),

            CustomTextField(
              labelText: 'Confirm Password',
              hintText: 'Hjias&&8989',
              obscureText: true,
              controller: controller.confirmPassword,
            ),

            const SizedBox(height: 30),

            CustomPrimaryButton(
              text: 'Next',
              onPressed: () {
                if (controller.validate()) {
                  Get.toNamed('/login');
                }
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

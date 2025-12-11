import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controllers/login_controller.dart';
import '../custom_widgets/custom_primarybutton.dart';
import '../custom_widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),

            Container(
              height: 200,
              margin: const EdgeInsets.only(bottom: 30),
              child: Center(
                child: Image.asset('assets/images/login.png', fit: BoxFit.contain),
              ),
            ),

            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 30),

            CustomTextField(
              labelText: 'Email',
              hintText: 'Enter your email ID here',
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
            ),

            CustomTextField(
              labelText: 'Password',
              hintText: 'Enter your password here',
              obscureText: true,
              controller: controller.password,
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () => debugPrint('Forgot Password'),
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFF6B58F8),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),

            CustomPrimaryButton(
              text: 'Login',
              onPressed: () {
                if (controller.validate()) {
                  Get.toNamed('/role');
                }
              },
            ),

            const SizedBox(height: 25),

            const Text(
              'Or login with',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SocialIcon(assetPath: 'assets/images/google.png', onTap: () {}),
                const SizedBox(width: 25),
                _SocialIcon(assetPath: 'assets/images/fb.png', onTap: () {}),
                const SizedBox(width: 25),
                _SocialIcon(assetPath: 'assets/images/x.png', onTap: () {}),
              ],
            ),

            const SizedBox(height: 35),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Not a member? ", style: TextStyle(fontSize: 14)),
                GestureDetector(
                  onTap: () => Get.toNamed('/signup'),
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                      color: Color(0xFF6B58F8),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class _SocialIcon extends StatelessWidget {
  final String assetPath;
  final VoidCallback onTap;

  const _SocialIcon({required this.assetPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Image.asset(
        assetPath,
        height: 35,
        width: 35,
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../custom_widgets/custom_primarybutton.dart';

class RoleSelectionScreen extends StatelessWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    void selectVisitor() => debugPrint('Visitor Selected');

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F9),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 120),

            SizedBox(
              height: 200,
              child: Center(
                child: Image.asset(
                  'assets/images/role.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              'Select your Role to Proceed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Manage Visitor or schedule meet-ups with us. We've got you covered.",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 80),
            CustomPrimaryButton(
              text: 'Admin',
              onPressed: () => Get.toNamed('/dashboard'),
            ),

            const SizedBox(height: 40),
            CustomPrimaryButton(
              text: 'Visitor',
              onPressed: selectVisitor,
              backgroundColor: Colors.white,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/custom_box.dart';
import 'dashboard/sections/bottom.dart';

class CheckInSuccessView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F2FD),

      appBar: AppBar(
        title: const Text("Check In",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: const Color(0xFFF3F2FD),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(height: 20),

            Image.asset("assets/images/qr.png", height: 180),

            const SizedBox(height: 24),

            const SizedBox(height: 30),

            CustomBox(
              backgroundColor: const Color(0xFFF3F2FD),
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  const Text(
                    "Congratulations!",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 10),
                  Image.asset(
                    "assets/images/tick.png",
                    height: 90,
                  ),

                  const Text(
                    "Your appointment has been confirmed. Show the QR code at the entrance.",
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
            const SizedBox(height: 30),
            CustomBox(
              backgroundColor: const Color(0xFF7165E3),
              padding: const EdgeInsets.symmetric(vertical: 18),
              child: const Center(
                child: Text("Exit",
                    style: TextStyle(color: Colors.white, fontSize: 17)),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: DashboardBottomNavBar(),
    );
  }
}

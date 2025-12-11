import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/custom_box.dart';
import '../controllers/check_in_controller.dart';
import 'check_in_success.dart';
import 'dashboard/sections/bottom.dart';

class CheckInReviewView extends StatelessWidget {
  final controller = Get.find<CheckInController>();

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
            const CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage("assets/images/check.png"),
            ),

            const SizedBox(height: 20),

            CustomBox(
              backgroundColor: const Color(0xFFF3F2FD),
              padding: const EdgeInsets.all(18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _info("Name :", controller.name.text),
                  _info("Phone no :", controller.phone.text),
                  _info("Gender :", "Male"),
                  _info("Check-In time :", "9:00 am"),
                  _info("Purpose of Visit :", controller.selectedPurpose.value),
                ],
              ),
            ),

            const SizedBox(height: 30),

            GestureDetector(
              onTap: () => Get.to(() => CheckInSuccessView()),
              child: CustomBox(
                backgroundColor: const Color(0xFF7165E3),
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: const Center(
                  child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 17)),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: DashboardBottomNavBar(),
    );
  }

  Widget _info(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          Text(value, style: const TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}

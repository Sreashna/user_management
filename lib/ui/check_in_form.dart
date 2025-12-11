import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../custom_widgets/custom_textfield.dart';
import '../../custom_widgets/custom_box.dart';
import '../controllers/check_in_controller.dart';
import 'check_in_review.dart';
import 'dashboard/sections/bottom.dart';

class CheckInFormView extends StatelessWidget {
  final controller = Get.put(CheckInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F2FD),

      appBar: AppBar(
        title: const Text("Check In",style: TextStyle(fontWeight: FontWeight.w500),),
        centerTitle: true,
        backgroundColor: const Color(0xFFF3F2FD),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              labelText: "Full Name",
              controller: controller.name,
              hintText: "Louis Litt",
            ),

            CustomTextField(
              labelText: "Mobile Number",
              controller: controller.phone,
              keyboardType: TextInputType.phone,
              hintText: "9999999999",
            ),

            CustomTextField(
              labelText: "Email Address",
              controller: controller.email,
              keyboardType: TextInputType.emailAddress,
              hintText: "louis@email.com",
            ),

            CustomTextField(
              labelText: "Company Name",
              controller: controller.company,
              hintText: "Pearson Hardman",
            ),

            const SizedBox(height: 18),
            const Text("Purpose of Visit",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            _purposeRow(),

            const SizedBox(height: 30),

            _nextButton(),
          ],
        ),
      ),

      bottomNavigationBar: DashboardBottomNavBar(),
    );
  }

  Widget _purposeRow() {
    return Obx(() {
      return Row(
        children: [
          Expanded(child: _purposeButton("ID Check", "assets/icons/id.png")),
          const SizedBox(width: 10),
          Expanded(child: _purposeButton("Meeting", "assets/icons/meeting.png")),
          const SizedBox(width: 10),
          Expanded(child: _purposeButton("Sports", "assets/icons/sports.png")),
          const SizedBox(width: 10),
          Expanded(child: _purposeButton("Idea", "assets/icons/idea.png")),
        ],
      );
    });
  }



  Widget _purposeButton(String title, String iconPath) {
    final isSelected = controller.selectedPurpose.value == title;

    return GestureDetector(
      onTap: () => controller.selectedPurpose.value = title,
      child: CustomBox(
        padding: const EdgeInsets.all(14),
        backgroundColor: isSelected
            ? Colors.blueGrey
            : const Color(0xFFF3F2FD),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFFF3F2FD),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            iconPath,
            height: 28,
            width: 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }



  Widget _nextButton() {
    return GestureDetector(
      onTap: () {
        if (controller.validate()) {
          Get.to(() => CheckInReviewView());
        }
      },
      child: CustomBox(
        padding: const EdgeInsets.symmetric(vertical: 18),
        backgroundColor: const Color(0xFF7165E3),
        child: const Center(
          child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 17)),
        ),
      ),
    );
  }
}

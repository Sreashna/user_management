import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onborading_controller.dart';
import '../custom_widgets/custom_primarybutton.dart';

class OnboardingView extends StatelessWidget {
  OnboardingView({super.key});

  final controller = Get.put(OnboardingController());

  final List<Map<String, String>> pages = [
    {
      "image": "assets/images/onboard1.png",
      "title": "Smart Visitor Management",
      "subtitle":
      "Simplify visitor management process with intuitive tools. Handle check-ins, approvals, tracking in just a few taps. Focus on what matters most."
    },
    {
      "image": "assets/images/onboard2.png",
      "title": "Manage Visitors Effortlessly",
      "subtitle":
      "      Stay informed with instant notifications and live updates. Know who’s on-site, where they are, and when they arrive or depart. Never miss a detail."
    },
    {
      "image": "assets/images/onboard3.png",
      "title": "Real-Time Updates",
      "subtitle":
      "   Experience smarter way to manage visitors from start to finish. Automate tasks, enhance security, and provide a seamless experience."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Obx(() {
        final page = pages[controller.pageIndex.value];

        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 80),

                SizedBox(
                  height: 260,
                  child: Center(
                    child: Image.asset(
                      page["image"]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                Text(
                  page["title"]!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Text(
                  page["subtitle"]!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                    height: 1.4,
                  ),
                ),

                const SizedBox(height: 40),

                CustomPrimaryButton(
                  text: "Next",
                  onPressed: controller.nextPressed,
                ),

                const SizedBox(height: 40),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                        (index) => Container(
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      width: controller.pageIndex.value == index ? 10 : 8,
                      height: controller.pageIndex.value == index ? 10 : 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: controller.pageIndex.value == index
                            ? const Color(0xFF6C63FF)
                            : const Color(0xFFDADADA),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),
              ],
            ),
          ),
        );
      }),
    );
  }
}

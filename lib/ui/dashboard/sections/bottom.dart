import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/dashboard_controller.dart';

class DashboardBottomNavBar extends StatelessWidget {
  final controller = Get.find<DashboardController>();

  DashboardBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return BottomNavigationBar(
        currentIndex: controller.selectedIndex.value,
        onTap: controller.changeTab,

        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 10,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,

        selectedFontSize: 0,
        unselectedFontSize: 0,

          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/homes.png",
                height: 26,
                width: 26,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                "assets/icons/homes.png",
                height: 26,
                width: 26,
                color: Color(0xFF7165E3),
              ),
              label: "",
            ),

            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/cal.png",
                height: 26,
                width: 26,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                "assets/icons/cal.png",
                height: 26,
                width: 26,
                color: Color(0xFF7165E3),
              ),
              label: "",
            ),

            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/arrow.png",
                height: 26,
                width: 26,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                "assets/icons/arrow.png",
                height: 26,
                width: 26,
                color: Color(0xFF7165E3),
              ),
              label: "",
            ),

            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/profile.png",
                height: 26,
                width: 26,
                color: Colors.grey,
              ),
              activeIcon: Image.asset(
                "assets/icons/profile.png",
                height: 26,
                width: 26,
                color: Color(0xFF7165E3),
              ),
              label: "",
            ),
          ]

      );
    });
  }
}

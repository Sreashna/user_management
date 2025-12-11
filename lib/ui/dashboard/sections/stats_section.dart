import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/dashboard_controller.dart';
import '../../../custom_widgets/custom_box.dart';

class StatsSection extends StatelessWidget {
  final controller = Get.find<DashboardController>();

  StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const Text(
          "Visitors Stats",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 12),
        CustomBox(
          backgroundColor: const Color(0xFFF3F2FD),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
          child: Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _stat("Requested", controller.requested.value),
                _divider(),
                _stat("Scheduled", controller.scheduled.value),
                _divider(),
                _stat("Completed", controller.completed.value),
                _divider(),
                _stat("Remaining", controller.remaining.value),
              ],
            );
          }),
        ),
      ],
    );
  }

  Widget _stat(String label, int value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "$value",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }

  Widget _divider() {
    return Container(
      height: 40,
      width: 1,
      color: Colors.black26,
    );
  }
}

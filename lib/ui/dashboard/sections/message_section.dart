import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/dashboard_controller.dart';
import '../../../custom_widgets/custom_box.dart';

class MessagesSection extends StatelessWidget {
  final controller = Get.find<DashboardController>();

  MessagesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titleRow(),
        const SizedBox(height: 12),
        SizedBox(
          height: 130,
          child: Obx(() {
            final list = controller.users;
            return ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              separatorBuilder: (_, __) => const SizedBox(width: 16),
              itemBuilder: (_, i) {
                final u = list[i];
                return CustomBox(
                  backgroundColor: const Color(0xFFF3F2FD),
                  padding: const EdgeInsets.all(14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(u.image),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            u.firstName,
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Text("9:00 am", style: TextStyle(color: Colors.black54, fontSize: 12)),
                      const SizedBox(height: 6),
                      const Text("Meeting in conference room B.", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }

  Widget _titleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text("Visitors Messages", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text("See all", style: TextStyle(fontSize: 14, color: Colors.blueGrey)),
      ],
    );
  }
}

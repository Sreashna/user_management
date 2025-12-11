import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/dashboard_controller.dart';
import '../../../custom_widgets/custom_box.dart';

class RequestsSection extends StatelessWidget {
  final controller = Get.find<DashboardController>();

  RequestsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _titleRow(),
        const SizedBox(height: 12),

        CustomBox(
          backgroundColor: const Color(0xFFF3F2FD),
          padding: EdgeInsets.zero,
          child: Obx(() {
            final list = controller.users;
            final showList = list.take(3).toList();

            return Column(
              children: List.generate(showList.length, (i) {
                final u = showList[i];
                final isLast = i == showList.length - 1;

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 22,
                            backgroundImage: NetworkImage(u.image),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${u.firstName} ${u.lastName}",
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                const Text(
                                  "Business meeting",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black54,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          _actionButton("Accept", Colors.green),
                          const SizedBox(width: 8),
                          _actionButton("Reject", Colors.red),
                        ],
                      ),
                    ),
                    if (!isLast)
                      Container(
                        height: 1,
                        color: Colors.black26,
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                      ),
                  ],
                );
              }),
            );
          }),
        ),
      ],
    );
  }

  Widget _actionButton(String text, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black, width: 1.2),
      ),
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 13),
      ),
    );
  }

  Widget _titleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Visitors Requests",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "See all",
          style: TextStyle(fontSize: 14, color: Colors.blueGrey),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';
import '../custom_widgets/custom_box.dart';
import 'dashboard/sections/bottom.dart';

class RequestView extends StatelessWidget {
  final controller = Get.find<DashboardController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F2FD),

      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF3F2FD),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "Visitors Requests",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),

      body: Obx(() {
        final list = controller.users;

        if (list.isEmpty) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.purple),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: list.length,
          itemBuilder: (_, i) {
            final u = list[i];

            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomBox(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.all(16),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: NetworkImage(u.image),
                        ),
                        const SizedBox(width: 12),

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

                        const Text(
                          "9:00 am",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black, width: 1.2),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Accept",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black, width: 1.2),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Reject",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),

      bottomNavigationBar: DashboardBottomNavBar(),
    );
  }
}

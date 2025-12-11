import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_management/ui/dashboard/sections/bottom.dart';
import 'package:user_management/ui/dashboard/sections/message_section.dart';
import 'package:user_management/ui/dashboard/sections/req_section.dart';

import '../../controllers/dashboard_controller.dart';
import 'sections/header_section.dart';
import 'sections/search_section.dart';
import 'sections/stats_section.dart';


class DashboardView extends StatelessWidget {
  DashboardView({Key? key}) : super(key: key);

  final controller = Get.put(DashboardController());
  final searchController = TextEditingController();
  final dashboardController = Get.find<DashboardController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      bottomNavigationBar: DashboardBottomNavBar(),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                const HeaderSection(),
                const SizedBox(height: 20),

                SearchSection(
                  controller: searchController,
                  onChanged: (value) => dashboardController.searchVisitors(value),
                ),

                const SizedBox(height: 24),

                MessagesSection(),
                const SizedBox(height: 24),

                StatsSection(),
                const SizedBox(height: 24),

                RequestsSection(),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

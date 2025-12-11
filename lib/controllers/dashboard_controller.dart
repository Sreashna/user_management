import 'package:get/get.dart';
import '../data/service/api_service.dart';
import '../domain/model/user_model.dart';

class DashboardController extends GetxController {
  RxList<UserModel> users = <UserModel>[].obs;
  RxList<UserModel> allUsers = <UserModel>[].obs;

  RxInt requested = 0.obs;
  RxInt scheduled = 78.obs;
  RxInt completed = 13.obs;
  RxInt remaining = 44.obs;

  RxInt selectedIndex = 0.obs;

  final api = ApiService();

  void changeTab(int index) {
    selectedIndex.value = index;

    switch (index) {
      case 0:
        Get.toNamed('/dashboard');
        break;
      case 1:
        Get.toNamed('/requests');
        break;
      case 2:
        Get.toNamed('/checkin-form');
        break;
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchUsers();
  }

  Future<void> fetchUsers() async {
    try {
      final data = await api.getUsers();
      final list = data.map<UserModel>((json) => UserModel.fromJson(json)).toList();

      allUsers.assignAll(list);
      users.assignAll(list);

      requested.value = users.length;

    } catch (e) {
      print("Error fetching users: $e");
      Get.snackbar("Error", "Failed to load users");
    }
  }

  Future<void> searchVisitors(String query) async {
    if (query.isEmpty) {
      users.assignAll(allUsers);
      requested.value = users.length;
      return;
    }

    try {
      final data = await api.searchUsers(query);
      final list = data
          .map<UserModel>((json) => UserModel.fromJson(json))
          .toList();

      users.assignAll(list);
      requested.value = users.length;

    } catch (e) {
      print("Search error: $e");
      Get.snackbar("Error", "Search failed. Try again");
    }
  }
}

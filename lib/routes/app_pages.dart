import 'package:get/get.dart';
import 'package:user_management/ui/role_view.dart';
import 'package:user_management/ui/signupscreen.dart';

import '../ui/check_in_form.dart';
import '../ui/check_in_review.dart';
import '../ui/check_in_success.dart';
import '../ui/dashboard/dashboard_view.dart';
import '../ui/loginscreen.dart';
import '../ui/onboarding_view.dart';
import '../ui/request_view.dart';


class AppPages {
  static final pages = [
    GetPage(name: '/', page: () => OnboardingView()),
    GetPage(name: '/login', page: () => LoginScreen()),
    GetPage(name: '/signup', page: () => SignUpScreen()),
    GetPage(name: '/role', page: () => RoleSelectionScreen()),
    GetPage(name: '/dashboard', page: () => DashboardView()),
    GetPage(name: '/requests', page: () => RequestView()),
    GetPage(name: '/checkin-form', page: () => CheckInFormView()),
    GetPage(name: '/checkin-review', page: () => CheckInReviewView()),
    GetPage(name: '/checkin-success', page: () => CheckInSuccessView()),
  ];
}

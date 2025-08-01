
import 'package:forxersmobile/authorization/confirm_details_screen.dart';
import 'package:forxersmobile/authorization/existing_member_screen.dart';
import 'package:forxersmobile/authorization/member_category_screen.dart';
import 'package:forxersmobile/authorization/otp_verficiation_screen.dart';
import 'package:forxersmobile/dashboard/homescreen.dart';
import 'package:forxersmobile/dashboard/main_dashboard.dart';
import 'package:forxersmobile/signals/signal_how_screen.dart';
import 'package:get/get.dart';
import '../authorization/activate_pin_screen.dart';
import '../authorization/create_pin_screen.dart';
import '../landing/onboarding_screen.dart';
import '../services/secure_storage_service.dart';
import '../signals/edit_group_screen.dart';
import '../signals/group_permission_screen.dart';
import '../signals/signal_screen.dart';

final storageManager = SecureStorageManager();

List<GetPage<dynamic>>? getPages = [

    GetPage(name: '/', page: () => OnboardingScreen()),
    GetPage(name: '/memberCategoryScreen', page: () => MemberCategoryScreen()),

    //AUTHENTICATION
    GetPage(name: '/existingMemberScreen', page: () => ExistingMemberScreen()),
    GetPage(name: '/confirmDetailsScreen', page: () => ConfirmDetailsScreen()),
    GetPage(name: '/otpVerificationScreen', page: () => OtpVerificationScreen()),
    GetPage(name: '/activatePinScreen', page: () => ActivatePinScreen()),
    GetPage(name: '/createPinScreen', page: () => CreatePinScreen()),

    // DASHBOARD
    GetPage(name: '/homeScreen', page: () => HomeScreen()),
    GetPage(name: '/mainDashboard', page: () => MainDashboard()),

    // SIGNALS
    GetPage(name: '/signalHowScreen', page: () => SignalHowScreen()),
    GetPage(name: '/signalScreen', page: () => SignalScreen()),
    GetPage(name: '/editGroupScreen', page: () => EditGroupScreen()),
    GetPage(name: '/groupPermissionScreen', page: () => GroupPermissionScreen())


];
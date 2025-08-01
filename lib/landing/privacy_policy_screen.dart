//
//
//
//   import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:prime_pro/core/services/notification_service.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// import '../../core/config/brand_config.dart';
// import '../onboarding_existing_customers/store/login_controller.dart';
//
// class PrivacyPolicyScreen extends StatefulWidget {
//   PrivacyPolicyScreen({super.key});
//
//   @override
//   State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
// }
//
// class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
//   LoginController _loginController = Get.find();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     _loginController.loadingPrivacy.value = true;
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     WebViewController controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             if (progress == 100) {
//                 _loginController.loadingPrivacy.value = false;
//             }
//           },
//           onPageStarted: (String url) {
//             //NotificationService.showLoader();
//           },
//           onPageFinished: (String url) {
//             //NotificationService.dismissLoader();
//           },
//           //onHttpError: (HttpResponseError error) {},
//           onWebResourceError: (WebResourceError error) {
//             NotificationService.showError("Error", error.description.toString());
//           },
//           onNavigationRequest: (NavigationRequest request) {
//             return NavigationDecision.navigate;
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse("https://app.trustbancgroup.com/privacy-policy/"));
//
//     return Scaffold(
//       appBar: AppBar(
//         scrolledUnderElevation: null,
//         leading: GestureDetector(
//           behavior: HitTestBehavior.translucent,
//           onTap: () {
//             Get.back();
//           },
//           child: const Icon(
//             Icons.arrow_back_rounded,
//             color: BrandStyleConfig.darkPrimary,
//           ),
//         ),
//         title: Text(
//           "Privacy Policy",
//           style: Theme.of(context).textTheme.displayLarge?.copyWith(
//               color: BrandStyleConfig.darkPrimary,
//               fontSize: 18.sp,
//               fontWeight: FontWeight.w500
//           ),
//         ),
//         centerTitle: true,
//       ),
//         body: Column(
//           children: [
//             Obx(() => _loginController.loadingPrivacy.value == false ? Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
//                   child: WebViewWidget(controller: controller),
//                 )) : Container(
//               height: MediaQuery.of(context).size.height * 0.8,
//                   child: Center(
//                                 child: CircularProgressIndicator(color: BrandStyleConfig.primary,),
//                               ),
//                 ),)
//           ],
//         ),);
//   }
// }

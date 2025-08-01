
import 'package:flutter/material.dart';
import 'package:forxersmobile/constants/colors.dart';
import 'package:forxersmobile/dashboard/main_dashboard.dart';
import 'package:get/get.dart';
import '../config/brandstyle_config.dart';
import 'dashboard_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  int tabIndex = 0;

  final DashboardController _dashboardController = Get.find();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dashboardController.tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
            controller: _dashboardController.tabController,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const MainDashboard(),
              const SizedBox(),
              const SizedBox(),
              const SizedBox(),
              const SizedBox(),
            ]
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: Obx(() => BottomNavigationBar(
            elevation: 20,
            currentIndex: _dashboardController.tabIndex.value,
            onTap: (int index){
              _dashboardController.tabIndex.value = index;
              debugPrint(index.toString());
              _dashboardController.tabController!.animateTo(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/pngs/HomeSmile.png',),
                  color: AppColors.white,
                  size: 25,
                ),
                activeIcon: ImageIcon(
                  AssetImage('assets/pngs/HomeSmile.png',),
                  size: 25,
                  color: AppColors.primary,
                ),
                label: 'Home',
              ),

              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/pngs/Hashtag.png',),
                  color: AppColors.white,
                  size: 25,
                ),
                activeIcon: ImageIcon(
                  AssetImage('assets/pngs/Hashtag.png',),
                  size: 25,
                  color: AppColors.primary,
                ),
                label: 'Channels',
              ),

              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/pngs/academic.png',),
                  color: AppColors.white,
                  size: 25,
                ),
                activeIcon: ImageIcon(
                  AssetImage('assets/pngs/academic.png',),
                  size: 25,
                  color: AppColors.primary,
                ),
                label: 'Academy',
              ),

              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/pngs/Cup.png',),
                  color: AppColors.white,
                  size: 25,
                ),
                activeIcon: ImageIcon(
                  AssetImage('assets/pngs/Cup.png',),
                  size: 25,
                  color: AppColors.primary,
                ),
                label: 'Goals',
              ),

              const BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/pngs/Settings.png',),
                    size: 25,
                  ),
                  activeIcon: ImageIcon(
                    AssetImage('assets/pngs/Settings.png',),
                    size: 25,
                    color: BrandStyleConfig.primary,
                  ),
                  label: 'Settings'
              ),
            ],
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.white,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400,
              height: 1.62,
              letterSpacing: -0.30,
            ),
            selectedLabelStyle: TextStyle(
              color: BrandStyleConfig.primary,
              fontWeight: FontWeight.w600,
              height: 1.62,
              letterSpacing: -0.30,
            ),
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            backgroundColor: AppColors.black,
          ),
          ),
        ));
  }

}

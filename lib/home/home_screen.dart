import 'package:chatbot/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../chatbot/chatbot_screen.dart';
import '../global.dart';
import 'home_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final homeController = Get.put(HomeController());

  int selectedIndex = 0;
  final pages = [
    const ChatbotScreen(),
    const ChatbotScreen(),
    const ChatbotScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConstanst.chat),
                  label: 'Chat',
                  backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(ImageConstanst.recent),
                  label: 'Recent',
                  backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(ImageConstanst.profile),
                label: 'Profile',
                backgroundColor: AppColors.backgroundColor,
              ),
            ],
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            iconSize: 40,
            onTap: _onItemTapped,

            backgroundColor: Colors.black,
            elevation: 5
        ),
        body:pages[selectedIndex],  /*Container(
          color: Colors.black,
          child: GetBuilder<HomeController>(
            init: HomeController(),
            builder: (cont) {
              homeController.context = context;
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    15.heightBox,

                  ],
                ),
              );
            },
          ),
        )*/
      ),
    );
  }
}

import 'package:community_social_app/screens/events_screen.dart';
import 'package:community_social_app/screens/home_screen.dart';
import 'package:community_social_app/screens/message_screen.dart';
import 'package:community_social_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:community_social_app/utils/config.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationController = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: whatsAppSelected,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
        child: Obx(
          () => NavigationBar(
            height: 70,
            elevation: 1,
            selectedIndex: navigationController.selectedIndex.value,
            onDestinationSelected: (index) =>
                navigationController.selectedIndex.value = index,
            backgroundColor: Colors.white,
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                selectedIcon: Icon(
                  Icons.home,
                  color: whatsAppFilled,
                ),
              ),
              NavigationDestination(
                  icon: Icon(Icons.chat_outlined),
                  label: "Messages",
                  selectedIcon: Icon(
                    Icons.chat,
                    color: whatsAppFilled,
                  )),
              NavigationDestination(
                icon: Icon(Icons.emoji_events_outlined),
                label: "Events",
                selectedIcon: Icon(
                  Icons.emoji_events,
                  color: whatsAppFilled,
                ),
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                label: "Profile",
                selectedIcon: Icon(
                  Icons.person,
                  color: whatsAppFilled,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Obx(
        () => navigationController
            .screens[navigationController.selectedIndex.value],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const MessagePage(),
    const EventsPage(),
    const ProfilePage(),
  ];
}

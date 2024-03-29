import 'package:doc_on_call/screens/appioment/schedule_screen.dart';
import 'package:doc_on_call/screens/chat_screen.dart';
import 'package:doc_on_call/screens/home_screen.dart';
import 'package:doc_on_call/screens/profile_screen.dart';
import 'package:doc_on_call/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  String? get routeName => null;

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 0;
  List<Widget> screens = [
    HomeScreen(),
    const SearchScreen(),
    const ChatScreen(),
    const ScheduleScreen(),
    const ProfileScreen(),
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: currentScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    // final cartProvider = Provider.of<CartProvider>(context);
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        shadowColor: Colors.purple,
        selectedIndex: currentScreen,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.home),
            icon: Icon(IconlyLight.home),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.search),
            icon: Icon(IconlyLight.search),
            label: "Search",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.chat),
            icon: Icon(IconlyLight.chat),
            label: "Message",
          ),
          NavigationDestination(
            selectedIcon: Icon(IconlyBold.calendar),
            icon: Icon(IconlyLight.calendar),
            label: "Booking",
          ),
          // NavigationDestination(
          //   selectedIcon: Icon(IconlyBold.profile),
          //   icon: Icon(IconlyLight.profile),
          //   label: "Profile",
          // ),
        ],
      ),
    );
  }
}

import 'package:chat_app_ui_1_17/chat_view.dart';
import 'package:chat_app_ui_1_17/colors.dart';
import 'package:chat_app_ui_1_17/login_view.dart';
import 'package:chat_app_ui_1_17/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndexx = 0;
  final PageController _pageController = PageController();

  List<Widget> screens = [const LoginView(), ChatView(), const ProfileScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: screens,
        onPageChanged: (value) {
          setState(() {
            currentIndexx = value;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          elevation: 0,
          selectedItemColor: AppColors.mainBlue,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          currentIndex: currentIndexx,
          onTap: (value) {
            _pageController.animateToPage(
              value,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
            setState(() {
              currentIndexx = value;
            });
          },
          //

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
          ]),
    );
  }
}

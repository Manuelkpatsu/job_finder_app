import 'package:flutter/material.dart';
import 'package:job_finder_app/theme/custom_color.dart';

import 'application/application_screen.dart';
import 'bookmarks/bookmarks_screen.dart';
import 'home/home_screen.dart';
import 'profile/profile_screen.dart';

class App extends StatefulWidget {
  static const routeName = '/';

  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentPage = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const BookmarksScreen(),
    const ApplicationScreen(),
    const ProfileScreen(),
  ];
  final List<BottomNavigationBarItem> _navBarItems = [
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/home.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      activeIcon: Image.asset(
        'assets/images/home-active.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/bookmarks.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      activeIcon: Image.asset(
        'assets/images/bookmarks-active.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      label: 'Bookmarks',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/application.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      activeIcon: Image.asset(
        'assets/images/application-active.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      label: 'Application',
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        'assets/images/account.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      activeIcon: Image.asset(
        'assets/images/account-active.png',
        height: 20,
        width: 20,
        fit: BoxFit.contain,
      ),
      label: 'My Account',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentPage,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: CustomColor.deskripsiColor,
        selectedItemColor: CustomColor.primaryColor,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentPage,
        onTap: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        items: _navBarItems,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          color: CustomColor.primaryColor,
          height: 1.5,
        ),
        unselectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.w400,
          height: 1.5,
          color: CustomColor.deskripsiColor,
        ),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        elevation: 0.5,
        iconSize: 20,
      ),
    );
  }
}

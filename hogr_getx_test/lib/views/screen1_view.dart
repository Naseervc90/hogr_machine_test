import 'package:flutter/material.dart';
import 'package:hogr_getx_test/constants/app_strings.dart';
import 'package:hogr_getx_test/views/tab1_view.dart';
import 'package:hogr_getx_test/views/tab2_view.dart';

class Screen1View extends StatefulWidget {
  const Screen1View({super.key});

  @override
  State<Screen1View> createState() => _Screen1ViewState();
}

class _Screen1ViewState extends State<Screen1View> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    Tab1Data(),
    Tab2Data(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text(AppConstants.screen1)),
          backgroundColor: Colors.cyan,
        ),
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Tab 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              label: 'Tab 2',
            ),
          ],
          selectedItemColor: Colors.cyan,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}

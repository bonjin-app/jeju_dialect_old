import 'package:flutter/material.dart';
import 'package:jejudialect/screens/home/home_screen.dart';
import 'package:jejudialect/screens/setting/setting_screen.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}
class _TabScreenState extends State<TabScreen> {
  PageController _pageController;
  int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: <Widget>[
          HomeScreen(),
          SettingScreen(),
          SettingScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _pageController.jumpToPage(index);
        },
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey.shade400,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w600,
        ),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text("홈"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star_border,
            ),
            title: Text("즐겨찾기"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
            ),
            title: Text("설 정"),
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    super.dispose();
  }
}
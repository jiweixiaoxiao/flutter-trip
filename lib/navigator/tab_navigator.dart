import 'package:flutter/material.dart';
import 'package:myflutter2/pages/home_page.dart';
import 'package:myflutter2/pages/my_page.dart';
import 'package:myflutter2/pages/search_page.dart';
import 'package:myflutter2/pages/travel_page.dart';

class TabNavigator extends StatefulWidget{
/*  @override
  State<StatefulWidget> createState() {
    return _TabNavigator();
  }*/
  @override
  _TabNavigator createState() => _TabNavigator();
}

class _TabNavigator extends State<TabNavigator> {
  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          SearchPage(),
          TravelPage(),
          MyPage(),
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          _controller.jumpToPage(index);
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          _bottonItem('首页', Icons.home),
          _bottonItem('搜索', Icons.search),
          _bottonItem('旅拍', Icons.camera_alt),
          _bottonItem('我的', Icons.account_circle),
        ],
        selectedLabelStyle: TextStyle(color: _activeColor),
        unselectedLabelStyle: TextStyle(color: _defaultColor),
      ),
    );
  }

  _bottonItem(String title, IconData icon){
    return BottomNavigationBarItem(
      icon: Icon(
        icon,
        color: _defaultColor,
      ),
      activeIcon: Icon(
        icon,
        color: _activeColor,
      ),
      label: title,
      );
  }
}
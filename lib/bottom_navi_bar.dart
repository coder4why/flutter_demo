import 'package:flutter/material.dart';

class MyBottomNaviBar extends StatefulWidget {
  var onTap;
  @override
  _MyBottomNaviBarState createState() => _MyBottomNaviBarState();
}

class _MyBottomNaviBarState extends State<MyBottomNaviBar> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _currentIndex = 0;
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
        BottomNavigationBarItem(icon: Icon(Icons.music_video),title: Text('视频')),
        BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('我的')),
      ],
      currentIndex: _currentIndex,
    );
  }
}

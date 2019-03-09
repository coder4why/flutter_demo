import 'package:flutter/material.dart';

class VideoAppBar extends StatefulWidget {
  @override
  _VideoAppBarState createState() => _VideoAppBarState();
}

class _VideoAppBarState extends State<VideoAppBar> with SingleTickerProviderStateMixin {
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
    return Center(
      child: Text('视频'),
    );
  }
}

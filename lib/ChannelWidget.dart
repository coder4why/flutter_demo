import 'package:flutter/material.dart';
//频道页面UI
class ChannelWidget extends StatefulWidget {
  @override
  _ChannelWidgetState createState() => _ChannelWidgetState();
}

class _ChannelWidgetState extends State<ChannelWidget> with SingleTickerProviderStateMixin {
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
    return Container();
  }
}

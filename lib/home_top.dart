import 'package:flutter/material.dart';
import 'home_cell_row.dart';

class HomeTopView extends StatefulWidget {
  @override
  _HomeTopViewState createState() => _HomeTopViewState();
}

class _HomeTopViewState extends State<HomeTopView> with SingleTickerProviderStateMixin {
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
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int position) {
          return CellRow();
        });
  }
}

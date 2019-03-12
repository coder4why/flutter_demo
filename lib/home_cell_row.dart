
import 'package:flutter/material.dart';

class CellRow extends StatefulWidget {
  @override
  _CellRowState createState() => _CellRowState();
}

class _CellRowState extends State<CellRow> with SingleTickerProviderStateMixin {
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
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image.network('https://i0.hdslb.com/bfs/archive/e3e65cff908fbaaecf1951373fa44a68a55cde34.jpg@640w_400h.jpg',),
          ),
        ),
        Text(
          '走遍中国，寻找最美中国乡村...',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
          ),

        ),
      ],
    );;
  }
}

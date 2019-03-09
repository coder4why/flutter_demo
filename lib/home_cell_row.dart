
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
            child: Image.network('https://ss3.baidu.com/-fo3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=2a5524e6e8cd7b89f66c3c833f244291/1e30e924b899a901b25a7f1a13950a7b0208f5ab.jpg',),
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

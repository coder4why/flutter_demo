import 'package:flutter/material.dart';

class VipAppBarWidget extends StatefulWidget {
  @override
  _VipAppBarWidgetState createState() => _VipAppBarWidgetState();
}

class _VipAppBarWidgetState extends State<VipAppBarWidget>
    with SingleTickerProviderStateMixin {
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
    return Container(
      width: 375.0,
      child: Stack(
        children: <Widget>[
          Container(
            width: 375.0,
            alignment: Alignment.center,
            child: Text(
              '会员购',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
          Positioned(
              right: -20,
              bottom: 8,
              child: Container(
                width: 120.0,
                height: 40.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Icon(
                      Icons.add_shopping_cart,
                      size: 25.0,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.settings_overscan,
                      size: 25.0,
                      color: Colors.white,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

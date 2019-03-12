import 'package:flutter/material.dart';

class VideoAppBar extends StatefulWidget {
  @override
  _VideoAppBarState createState() => _VideoAppBarState();
}

class _VideoAppBarState extends State<VideoAppBar>
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
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        padding: EdgeInsets.only(bottom: 0, left: 0, top: 15),
        height: 60.0,
//      color: Colors.blue,
        alignment: Alignment.bottomLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '广场',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400, fontSize: 23.0),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 2),
                  width: 55,
                  height: 3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                )
              ],
            ),
            Icon(Icons.list,color: Colors.white,size: 32.0,),
          ],
        ));
  }
}

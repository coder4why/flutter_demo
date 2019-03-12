import 'package:flutter/material.dart';

class MyGradView extends StatefulWidget {
  @override
  _MyGradViewState createState() => _MyGradViewState();
}

class _MyGradViewState extends State<MyGradView> with SingleTickerProviderStateMixin {
//  AnimationController _controller;

  @override
  void initState() {
//    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
//    _controller.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3.0),
      width: 350,
      height: 400.0,
      child: new GridView.builder(
        physics: new NeverScrollableScrollPhysics(),
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(//SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
          crossAxisSpacing:10.0,
          mainAxisSpacing: 5.0,
          maxCrossAxisExtent: 180.0,
        ),
        itemBuilder:  (BuildContext context, int index) {
          return new Image.network(
            'https://i0.hdslb.com/bfs/live/user_cover/5f809e6d2a825e7a763629049a09221cc09c21d7.jpg@640w_400h.jpg',
            fit: BoxFit.cover,
          );
        },
        itemCount: 10,
      ),
    );
  }
}

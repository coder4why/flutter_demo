import 'package:flutter/material.dart';

class AppNaviBar extends StatefulWidget {
  @override
  _AppNaviBarState createState() => _AppNaviBarState();
}

class _AppNaviBarState extends State<AppNaviBar> with SingleTickerProviderStateMixin {
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            child: Image.network('https://img4.duitang.com/uploads/item/201404/19/20140419213843_CYkKk.thumb.700_0.jpeg',width: 40,height: 40,),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: ClipRRect(
              borderRadius:BorderRadius.all(Radius.circular(20.0)),
              child:Container(
//                  alignment: Alignment(-1, 0),
//                  margin: EdgeInsets.only(left: 20.0),
                width: 180.0,
                height: 40.0,
                color: Colors.white30,
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child:Row(
                    children: <Widget>[
                      Icon(Icons.search,color: Colors.white30,size: 30,),
                      Padding(
                        padding: EdgeInsets.only(top: 0.0),
                        child: Container(
//                              color: Colors.yellow,
                          width: 120.0,
                          height: 30.0,
                          child: TextField(
                            style: TextStyle(
                              decorationColor: Colors.red,
                              color: Colors.white,
                            ),
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              fillColor: Colors.white30,
                              border: InputBorder.none,  //去掉下划线
                              prefixStyle: TextStyle(color: Colors.white),
                              contentPadding: EdgeInsets.only(top:5.0),
//                              hintText: '请输入手机号',
                              hintStyle: TextStyle(color: Colors.white),
                            ), autofocus: false, ),
                        ) ,
                      ),
                    ],
                  ),
                ),
              ),
            ),),
          Container(
//                color: Colors.black,
            height: 40,
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(Icons.share,color: Colors.white70,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Icon(Icons.settings,color: Colors.white70,),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

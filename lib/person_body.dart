import 'package:flutter/material.dart';
import 'post.dart';

class PersonBodyWidget extends StatefulWidget {
  @override
  _PersonBodyWidgetState createState() => _PersonBodyWidgetState();
}

class _PersonBodyWidgetState extends State<PersonBodyWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  _sliverGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: 1.0,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                        )
                      ],
                      border: Border.all(
                        color: Colors.black12,
                        width: 1,
                        style: BorderStyle.solid,
                      )),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    child: Image.network(
                      posts[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  )));
        },
        childCount: posts.length,
      ),
    );
  }

  _centers() {
    return Container(
      color: Colors.black38,
    );
  }

  _sliver() {
    return SliverPadding(
      padding: EdgeInsets.all(8),
      sliver: _sliverGrid(),
    );
  }

  _topMsgs() {
    return Container(
      color: Colors.pink.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 30, right: 15),
//            height: 30,
//            width: 80,
            child: Container(
              height: 30,
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                    size: 23,
                  ),
                  Icon(
                    Icons.color_lens,
                    color: Colors.white,
                    size: 23,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 23,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 5),
            height: 90,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.network(
                    'https://i0.hdslb.com/bfs/bangumi/966544071d5bfcf1d244bad7f6ce623310407db9.jpg@144w_144h.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '85257205396_bili',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70.0,
                        alignment: Alignment.center,
                        child: Text(
                          '注册会员',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            )),
                      ),
                      Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'B币： 0',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                          Text(
                            '硬币： 0',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10,left: 96),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white70,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 10.0,right: 5),
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '来吧！只有会员才知道的世界！',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Colors.white70,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _customBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          expandedHeight: 190.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            collapseMode: CollapseMode.parallax,
//            title: _topMsgs(),
            background: _topMsgs(),
//            Container(
//              color: Colors.pink.withAlpha(40),
//              ),
          ),
        ),
        SliverSafeArea(
          sliver: _sliver(),
        ),
      ],
    );
  }

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
    return Scaffold(body: _customBody());
  }
}

import 'package:flutter/material.dart';
import 'DynamicsBodyWidget.dart';

class DynamicsAppBar extends StatefulWidget {
  @override
  _DynamicsAppBarState createState() => _DynamicsAppBarState();
}

class _DynamicsAppBarState extends State<DynamicsAppBar>
    with SingleTickerProviderStateMixin {
  static TabController _tabController;
  var body = Container(
    color: Colors.black12.withAlpha(5),
    child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            var _textEditController = TextEditingController();
            return Container(
                color: Colors.white,
                padding: EdgeInsets.all(10),
                height: 55.0,
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    color: Colors.black12,
                  ),
                  height: 50.0,
//                  color: Colors.yellow,
                  child: TextField(
                    controller: _textEditController,
                    style: TextStyle(
                      decorationColor: Colors.black,
                      color: Colors.black,
                    ),
//                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.black26,
                      prefixStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                      //去掉下划线
                      contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                      hintText: '查找精彩动态内容',
                      hintStyle: TextStyle(color: Colors.black26),
//                labelText: '左上角',
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                    ),
                  ),
                ));
          } else {
            return Container(
              height: 900,
              width: 375,
              child: new TabBarView(
                children: <Widget>[
                  DynamicsBodyWidget(),
                  DynamicsBodyWidget(),
                  DynamicsBodyWidget()
                ],
                controller: _tabController,
              ),
            );
          }
        }),
  );

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var style = TextStyle(fontSize: 20.0,);
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: new TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              // labelStyle:style,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white54,
              // unselectedLabelStyle: TextStyle(fontSize: 17.0, color: Colors.white54),
              tabs: <Widget>[
                new Tab(
                  icon: Text(
                    '视频',
                    style: style,
                  ),
                ),
                new Tab(
                  icon: Text(
                    '综合',
                    style: style,
                  ),
                ),
                new Tab(
                  icon: Text(
                    '热门',
                    style: style,
                  ),
                ),

              ],
              controller: _tabController,
            ),
          ),
//      body:
        ));
  }
}

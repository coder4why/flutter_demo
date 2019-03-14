import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var items = [
      Center(
        child: Text(
          'h哈哈',
          style: TextStyle(fontSize: 60, color: Colors.red),
        ),
      ),
      Center(
        child: Text(
          'h哈哈',
          style: TextStyle(fontSize: 60, color: Colors.black87),
        ),
      ),
      Center(
        child: Text(
          'h哈哈',
          style: TextStyle(fontSize: 60, color: Colors.blue),
        ),
      )
    ];
    return new DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('详情'),
          ),
          body: Container(
              color: Colors.black12,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.red,
                    child: new TabBar(
                      indicatorColor: Colors.white,
                      tabs: <Widget>[
                        new Tab(
                          icon: new Icon(Icons.directions_bike),
                        ),
                        new Tab(
                          icon: new Icon(Icons.directions_boat),
                        ),
                        new Tab(
                          icon: new Icon(Icons.directions_bus),
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                  Expanded(
                      child: TabBarView(
                    controller: _tabController,
                    children: items.map((item) {
                      return item;
                    }).toList(),
                  ))
                ],
              )),
        ));
  }
}

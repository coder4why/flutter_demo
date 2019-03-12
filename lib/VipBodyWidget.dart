import 'package:flutter/material.dart';



class VipBodyWidget extends StatefulWidget {

  @override
  _VipBodyWidgetState createState() => _VipBodyWidgetState();
}

class _VipBodyWidgetState extends State<VipBodyWidget> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Container(
              height: 200,
              child: new TabBarView(
                children: <Widget>[
                  new Center(child: Image.network('https://ss1.baidu.com/-4o3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=1ff5f63465600c33ef79d8c82a4d5134/7aec54e736d12f2ecdae9b4041c2d56285356862.jpg')),
                  new Center(child: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2884415001,932035155&fm=26&gp=0.jpg')),
                  new Center(child: Image.network('https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1761595179,3348344402&fm=26&gp=0.jpg')),
                ],
                controller: _tabController,
              ),
            );

          } else {

          }
        });
  }
}

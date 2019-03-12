import 'package:flutter/material.dart';
import 'home_top.dart';
import 'appBar.dart';
import 'person_app_bar.dart';
import 'video_app_bar.dart';
import 'next_page.dart';
import 'ChannelBodyWidget.dart';
import 'swiper_pics.dart';
import 'home_hot_page.dart';
import 'VipAppBarWidget.dart';
import 'VipBodyWidget.dart';
import 'DynamicsAppBarWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      debugShowCheckedModeBanner: true,
      home: MyHomePage(),
      //设置路由：
      routes: {
        'DetailPage': (BuildContext context) => new DetailPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  var _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4,initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var appBars = [
      AppNaviBar(),
      VideoAppBar(),
      DynamicsAppBar(),
      VipAppBarWidget(),
      PersonAppBar(),
    ];
    var appbodys = [
      HomeTopView(),
      MySwiperPics(),
      HomeHotWidget(),
      new Center(
          child: Image.network(
              'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1761595179,3348344402&fm=26&gp=0.jpg')),
    ];
    var style = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500);
    var bottoms = [
      TabBar(
        labelStyle:
            TextStyle(color: Colors.yellow, decorationColor: Colors.yellow),
        indicatorColor: Colors.white,
//        unselectedLabelColor: Colors.yellow,
        tabs: <Widget>[
          new Tab(
            icon: Text(
              '直播',
              style: style,
            ), //new Icon(Icons.directions_bike),
          ),
          new Tab(
            icon: Text('推荐', style: style),
          ),
          new Tab(
            icon: Text('热门', style: style), //new Icon(Icons.directions_boat),
          ),
          new Tab(
            icon: Text('追番', style: style), // new Icon(Icons.directions_bus),
          ),
        ],
        controller: _tabController,
      ),
      null,
      null,
      null,
      null
    ];
    var bodys = [
      TabBarView(
        children: appbodys,
        controller: _tabController,
      ),
      MyVideoPlayer(),
      DynamicsAppBar().createState().body,
      VipBodyWidget(),
      null
    ];
    return Scaffold(
      appBar: AppBar(
        title: appBars[_currentIndex],
        bottom: bottoms[_currentIndex],
      ),
      body: bodys[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
//        iconSize: 20.0,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.deepOrange,
              ),
              title: Text(
                '首页',
                style: TextStyle(color: Colors.deepOrange),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.audiotrack,
                color: Colors.deepOrange,
              ),
              title: Text('频道', style: TextStyle(color: Colors.deepOrange))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.cloud,
                color: Colors.deepOrange,
              ),
              title: Text('动态', style: TextStyle(color: Colors.deepOrange))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.deepOrange,
              ),
              title: Text('会员购', style: TextStyle(color: Colors.deepOrange))),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.deepOrange,
              ),
              title: Text('我的', style: TextStyle(color: Colors.deepOrange))),
        ],
//        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),

    );
  }
}

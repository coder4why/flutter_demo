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
import 'person_body.dart';
// import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'home_zhhuibo_page.dart';
// import 'package:flutter/services.dart';

void main() { 
  // await FlutterStatusbarcolor.setStatusBarColor(Colors.transparent);
  // if (useWhiteForeground(Colors.white)) {
  //   FlutterStatusbarcolor.setStatusBarWhiteForeground(true);
  // } else {
  //   FlutterStatusbarcolor.setStatusBarWhiteForeground(false);
  // }
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MyApp());
}

Color themeColor = Colors.grey;
Color selectColor = Color(0xFFeb7b98);//

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Color(0xFFeb7b98),
       brightness: Brightness.light
//        dividerColor: Color(0xffeeeeee),
//        scaffoldBackgroundColor: Color(0xFF888888),
//        textTheme: TextTheme(body1: TextStyle(color: Color(0xFF333333))),
        // primarySwatch: themeColor,
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
    _tabController = new TabController(vsync: this, length: 4, initialIndex: 0);
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
//      null,
      PersonAppBar(),
    ];
    var appbodys = [
      HomeTopView(),
      MySwiperPics(),
      HomeHotWidget(),
      HomeZhuiFanWidget(),
    ];
    var style = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500);
    var bottoms = [
      TabBar(
        // labelPadding: EdgeInsets.all(0),
        indicatorSize: TabBarIndicatorSize.label,
        // labelStyle:
            // TextStyle(color: Colors.yellow),
        indicatorColor: Colors.white,
        // indicatorColor: Colors.black,
        labelColor: Colors.white,
        unselectedLabelColor:Colors.white54,
        tabs: <Widget>[
          new Container(
            // color: Colors.white,
            // width: 375/4.0,
            child: Tab(
            icon: Text(
              '直播',
              style: style,
            ), //new Icon(Icons.directions_bike),
          ),
          ),
          new Container(
            // color: Colors.white,
            // width: 375/4.0,
            child: Tab(
            icon: Text('推荐', style: style),
          )
          ),
          new Container(
            // color: Colors.white,
            // width: 375/4.0,
            child: Tab(
            icon: Text('热门', style: style), //new Icon(Icons.directions_boat),
          )),
          new Container(
            // color: Colors.white,
            // width: 375/4.0,
            child: Tab(
            icon: Text('追番', style: style), // new Icon(Icons.directions_bus),
          )),
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
      PersonBodyWidget(),
    ];
    return Scaffold(
      appBar:_currentIndex==4?null:AppBar(
        brightness: Brightness.dark,
        // elevation: 0.5,
        // backgroundColor: Colors.transparent,
        title: appBars[_currentIndex],
        bottom: bottoms[_currentIndex],
      ),
      body: bodys[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
//        iconSize: 20.0,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFFeb7b98), //Colors.red,
        unselectedItemColor: Color(0xFFa6a6a6),

        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                // color: selectColor,
              ),
              title: Text(
                '首页',
                // style: TextStyle(color: themeColor),
              )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.audiotrack,
                // color:themeColor,
              ),
              title: Text('频道', )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.cloud,
                // color: themeColor,
              ),
              title: Text('动态', )),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                // color: themeColor,
              ),
              title: Text('会员购',)),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                // color: themeColor,
              ),
              title: Text('我的')),
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

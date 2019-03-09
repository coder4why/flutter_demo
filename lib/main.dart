import 'package:flutter/material.dart';
import 'home_top.dart';
import 'appBar.dart';
import 'person_app_bar.dart';
import 'video_app_bar.dart';
import 'next_page.dart';

void main() => runApp(MyApp());

var pageContext;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    pageContext = context;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink ,
      ),
      home: MyHomePage(),
      //设置路由：
      routes: {
        'DetailPage':(BuildContext context)=>new DetailPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  var appBars = [
    AppNaviBar(),VideoAppBar(),PersonAppBar(),
  ];

  @override
  Widget build(BuildContext context) {
    var appbodys = [
      HomeTopView(),
      Center(child: Text('视频',style: TextStyle(fontSize: 30.0,color: Colors.blue,fontWeight: FontWeight.w500),),),
      Center(child: new MaterialButton(
        color: Colors.pink,
        textColor: Colors.white,
        child: new Text('点我',style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.w500),),
        onPressed: () {
          Navigator.pushNamed(context, "DetailPage");
        },
      ),),
    ];
    return Scaffold(
      appBar: AppBar(
        title: appBars[_currentIndex],
      ),
      body: Container(
         child: appbodys[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
            BottomNavigationBarItem(icon: Icon(Icons.music_video),title: Text('视频')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('我的')),
        ],
        currentIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}



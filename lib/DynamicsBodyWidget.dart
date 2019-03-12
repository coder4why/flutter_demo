import 'package:flutter/material.dart';
import 'dart:math';

class DynamicsBodyWidget extends StatefulWidget {
  @override
  _DynamicsBodyWidgetState createState() => _DynamicsBodyWidgetState();
}

class _DynamicsBodyWidgetState extends State<DynamicsBodyWidget>
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
    var iconImages = [
      'https://i0.hdslb.com/bfs/bangumi/8d9f5b4a566d0547bc2e3f6f733b732a09c0d3d4.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/098cac1b63000954609103a4d0e4cc6d12b0fcbc.png@144w_144h.png',
      'https://i0.hdslb.com/bfs/bangumi/01fe9aba08be60c64c56e1d8e8afce66b6c3d5cc.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/7cd6c47770dc96e329fecd89f78b012267420c35.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/5d2e71f2cb44bd4e2b80d2b8845a80c685dd7bd5.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/5c2f289eac0ec49bc5e6b9483f4191c42ffa2254.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/4143c286982fd8f9ad467af7b6e4a74aaee1c026.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/a126d4383400812ccc6c8f2c44a3a634752cba7c.png@144w_144h.png',
      'https://i0.hdslb.com/bfs/bangumi/966544071d5bfcf1d244bad7f6ce623310407db9.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/d4c67e22df0e5ebbd136393dd182380ab1f04813.png@144w_144h.png',
    ];
    var titles = ['极客学院', 'CSDN学院', '倚天屠龙记', '天下第一', '九阴真经', '降龙十八掌'];
    var desTitles = [
      '2-21-投稿了视频',
      '2-25-投稿了视频',
      '2-26-投稿了视频',
      '2-27-投稿了视频',
      '2-2-投稿了视频',
      '2-28-投稿了视频',
    ];

    var videoImages = [
      'http://imgs.aixifan.com/block_1552374040919-Yq9eDMIyq2?imageView2/1/w/508/h/260/q/100',
      'https://i0.hdslb.com/bfs/archive/702161df0eef14b01bc77ea1d8ea1d00ac76bbc6.jpg',
      'https://i0.hdslb.com/bfs/bangumi/6bbd679d4c04cfed5d5431607df6a9838c7d7932.jpg@1260w_600h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/7c2d61371956daabb2b9a1fb5fe43e2cc9f46f5c.jpg@1260w_600h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/b773f9d1733747302778eca86f0c00d6c79f6d06.jpg@1260w_600h.jpg',
    ];

    return ListView.builder(
        scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  color: Colors.white,
//                  height: 450.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 48,
                        height: 48,
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          child: Image.network(
                            iconImages[Random().nextInt(10) % 10],
                            width: 48,
                            height: 48,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        width: 250,
                        margin: EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              titles[Random().nextInt(6) % 5],
                              style: TextStyle(
                                  fontSize: 17.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              desTitles[Random().nextInt(6) % 5],
                              style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Icon(
                          Icons.more_vert,
                          size: 25,
                          color: Colors.black38,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    '「天之道，损有馀而补不足，是故虚胜实，不足胜有馀。其意博，其理奥，其'
                        '趣深。天地之像分，阴阳之侯烈，变化之由表，死生之兆章。」「弱之胜强，柔之胜刚，天下莫不知...',
                    style: TextStyle(fontSize: 17.0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                        child: Image.network(
                            videoImages[Random().nextInt(6)%5]),
                      ),
                      Positioned(
                        bottom: 5.0,
                          left: 5,
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text('42:23',style: TextStyle(fontSize: 14.0,color: Colors.white),),
                                  width: 45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.black54,
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('268观看',style: TextStyle(fontSize: 14.0,color: Colors.white),),
//                                  width: 60,
                                ),

                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text('0弹幕',style: TextStyle(fontSize: 14.0,color: Colors.white),),
//                                  width: ,
                                ),

                              ],
                            ),
                          ))
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  alignment: Alignment.centerLeft,
                  child: Text('Dart开篇01-（我的各种学习资料）',style: TextStyle(fontSize: 17.0,fontWeight: FontWeight.bold),),
                ),
                Container(
                  height: 60.0,
                  color: Colors.white,
                  padding: EdgeInsets.only(left: 10,right: 10),
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.share,color: Colors.black38,size: 20,),
                            Text(' 转发',style: TextStyle(color: Colors.black38,fontSize: 16),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.comment,color: Colors.black38,size: 20,),
                            Text(' 1',style: TextStyle(color: Colors.black38,fontSize: 16),)
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.thumb_up,color: Colors.black38,size: 20,),
                            Text(' 8',style: TextStyle(color: Colors.black38,fontSize: 16),)
                          ],
                        ),
                      ),
                    ],
                  )
                )
              ],
            ),
          );
        });
  }
}

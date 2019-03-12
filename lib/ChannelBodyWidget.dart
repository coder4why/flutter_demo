import 'package:flutter/material.dart';

class MyVideoPlayer extends StatefulWidget {
  @override
  _MyVideoPlayerState createState() => _MyVideoPlayerState();
}

class _MyVideoPlayerState extends State<MyVideoPlayer>
    with SingleTickerProviderStateMixin {
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
    var iconTitles = [
      '番剧','国创','放映厅','纪录片', '漫画',
    ];

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    height: 80.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          height: 44.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                '原创歌曲',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '15.8万人已订阅',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 70.0,
                          height: 28.0,
                          alignment: Alignment.center,
                          child: Text(
                            '+ 订阅',
                            style:
                                TextStyle(fontSize: 16.0, color: Colors.orange),
                          ),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                              border: Border.all(
                                color: Colors.orange,
                                width: 1.0,
                              )),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.network(
                                    'https://i0.hdslb.com/bfs/archive/8ae1e30063644f94a39890d7d47b2310f4ac0fb0.jpg',
                                    width: 172.5,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                Positioned(
                                    bottom: 2.0,
                                    child: Container(
                                        width: 172.5,
//                                        color: Colors.blue,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  size: 15.0,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  '2074  ',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13.0),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.cloud,
                                                  color: Colors.white,
                                                  size: 15.0,
                                                ),
                                                Text(
                                                  '51',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13.0),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              '4:11',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 13.0),
                                            ),
                                          ],
                                        )))
                              ],
                            ),
                            Container(
                              width: 172.5,
                              child: Text('【林斜阳】人间负我——大梦'),
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                ClipRRect(
                                  child: Image.network(
                                    'https://i1.hdslb.com/bfs/archive/d97ecdf166b72bcf627f1527441bf81950880373.jpg@320w_200h.jpg',
                                    width: 172.5,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                Positioned(
                                    bottom: 2,
                                    child: Container(
                                      width: 172.5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.play_circle_filled,
                                                  size: 15.0,
                                                  color: Colors.white,
                                                ),
                                                Text(
                                                  '2074',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.cloud,
                                                  color: Colors.white,
                                                  size: 15.0,
                                                ),
                                                Text(
                                                  '51',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 13.0),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            '4:11',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13.0),
                                          ),
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                            Container(
                              width: 175,
                              child: Text('【林斜阳】人间负我——大梦'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 40.0,
                    alignment: Alignment.center,
                    child: Text(
                      '发现更多频道 >',
                      style: TextStyle(color: Colors.orange, fontSize: 16.0),
                    ),
                  ),
                  Container(
                    height: 0.5,
                    color: Colors.black12,
                  )
                ],
              ),
            );
          } else {
            return Container(
              height: 570,
              color: Colors.white,
              width: 375.0,
              child: new GridView.builder(
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                  //SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
                  //横轴的最大长度
                  maxCrossAxisExtent: 93.5,
                  //主轴间隔
                  mainAxisSpacing: 0.0,
                  //横轴间隔
                  crossAxisSpacing: 2.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: new Image.network(
                          iconImages[index%10],
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 20.0,
                        child: Text(
                          iconTitles[index%5],
                          style: TextStyle(fontSize: 14.0),
                        ),
                      )
                    ],
                  );
                },
                itemCount: 24,
              ),
            );
          }
        });
  }
}

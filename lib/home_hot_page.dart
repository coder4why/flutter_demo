import 'package:flutter/material.dart';

class HomeHotWidget extends StatefulWidget {
  @override
  _HomeHotWidgetState createState() => _HomeHotWidgetState();
}

class _HomeHotWidgetState extends State<HomeHotWidget>
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
    var images = [
      'https://i0.hdslb.com/bfs/live/66f63f2bd27533dca5cbfc2b3a2d58107adc51a3.jpg@640w_400h.jpg',
      'https://i0.hdslb.com/bfs/live/0149b64df95f1f31af4032871f3cc8942115ed13.jpg@640w_400h.jpg',
      'https://i0.hdslb.com/bfs/archive/79020e2b78ad7ee03a6852c9e8ff64596fd0c104.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/77ba327482a0cad9b6b028c2ee726230fde6ce63.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/87a644bcea8c2f00240505e192ad15337aca73b8.jpg@320w_200h.jpg',
    ];
    var titles = [
      '扔猫到中国地图，猫Jio戳到哪里就去哪里！竟然戳到了...',
      '这部动画本该封神！结尾却争议不断，被大家疯狂吐槽？',
      '【某幻】史上最强谋杀王',
      '网红"空气炸锅"到底是神器还是鸡肋产品？和烤箱比又有什么...',
      '我买下了《出山》原曲的使用权——蒋俊博'
    ];
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Container(
              width: 375.0,
              height: 48.0,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.black12,
                    width: 375.0,
                    height: 0.5,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '当前热门',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black38,
                              fontWeight: FontWeight.normal),
                        ),
                        Container(
                          width: 110.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.radio,
                                size: 20.0,
                                color: Colors.orange,
                              ),
                              Text(
                                '查看更多',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w300),
                              ),
                              Icon(
                                Icons.navigate_next,
                                size: 20.0,
                                color: Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              height: 111.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Colors.black12,
                    height: 0.5,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.symmetric(vertical: 7.5),
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                child: Image.network(
                                  images[position - 1],
                                  height: 95,
                                  width: 150,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                  bottom: 5.0,
                                  right: 5.0,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 60.0,
                                    height: 25.0,
                                    child: Text(
                                      '6:05',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(5.0)),
                                    ),
                                  )),
                            ],
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.symmetric(horizontal: 5.0),
//                          height: 95.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 180,
//                                height: 40.0,
                                child: Text(
                                  titles[position - 1],
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
//                                  softWrap: false,//
                                ),
                              ),
                              position == 1
                                  ? Container(
                                      alignment: Alignment.center,
                                      width: 60,
                                      decoration: BoxDecoration(
                                        color: Colors.orangeAccent,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.0)),
                                      ),
                                      child: Text(
                                        '8万点赞',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white),
//                                  softWrap: true,
                                      ),
                                    )
                                  : Container(),
                              Container(
                                width: 180,
//                                color: Colors.blue,
                                child: Text(
                                  '败犬鲁鲁',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.black45),
//                                  softWrap: true,
                                ),
                              ),
                              Container(
                                  width: 180,
//                                color: Colors.blue,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        '29.1万观看-19小时前',
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black45),
//                                  softWrap: true,
                                      ),
                                      Icon(Icons.more_vert,
                                          size: 20.0, color: Colors.black38),
                                    ],
                                  ))
                            ],
                          )),
                    ],
                  )
                ],
              ),
            );
          }
        });
  }
}

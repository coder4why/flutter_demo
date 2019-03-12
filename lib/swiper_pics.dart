import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'my_gradview.dart';

class MySwiperPics extends StatefulWidget {
  @override
  _MySwiperPicsState createState() => _MySwiperPicsState();
}

class _MySwiperPicsState extends State<MySwiperPics>
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

  Widget _swiperBuilder(BuildContext context, int index) {
    var images = [
      'https://i0.hdslb.com/bfs/archive/2bcdd16080a1b741fb18ea9e2b2edb942f236389.jpg',
      "https://i0.hdslb.com/bfs/archive/5dea26a8ef8d5410b3e2e9861638bf46eeb70569.jpg",
      "https://i0.hdslb.com/bfs/archive/4cf45546da8f6a04321019c7ae83bcc3d1a8259e.jpg",
      "https://i0.hdslb.com/bfs/archive/a4758eac761305040574be94e4909d4b6414e612.jpg",
      "https://i0.hdslb.com/bfs/archive/1d5cd0e2ac820f68db273f5d53168a429fa83182.jpg",
    ];
    return (Container(
            child: ClipRRect(
      child: Image.network(
        images[index],
        height: 150.0,
        scale: 0.1,
        fit: BoxFit.cover,
      ),
      // 用Container实现图片圆角的效果
//              decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
//              ),
    ))
//          Image.network( images[index],height: 200.0, )
        );
  }

  @override
  Widget build(BuildContext context) {
    var videoImages = [
      'https://i1.hdslb.com/bfs/archive/f1be8293f490cd5e32a5c2f565c89880e76e3061.jpg@320w_200h.jpg',
      'https://i1.hdslb.com/bfs/archive/416a3ee705b2ac544ff76f60af52f6655bf6eb42.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/00573099a2c86569ea68380bb44ccf91b0ca8619.png@320w_200h.png',
      'https://i2.hdslb.com/bfs/archive/c781bb917d148a18dc0981ee8a8abdead75fb95f.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/515eb7f4ca826304eeadbd51e124e27ecbfd1e17.jpg@320w_200h.jpg',
      'https://i1.hdslb.com/bfs/archive/e22ff91e9363d48f03d86ed00185bcda10181dee.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/9eca86255ef1838886b4b5f1c0662d3e9f634410.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/be9686d5bb15d4ce330f73ee6acd0303a9170b5b.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/bdd67d993c31ac4a9bc5054367229bad40c4000a.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/a90dd608483742898f02e45ec039097446cdcd56.jpg@320w_200h.jpg'
    ];
    var videoContents = [
      '【我爱我的祖国】易烊千...',
      '六千英镑就能买到劳斯莱.',
      '【章鱼哥哥&海绵宝宝】',
      '元首对蔡徐坤黑粉的愤怒',
      '6110分继续刚',
      '英雄联盟LEC赛区-春季赛',
      'apex emmm',
      '与仙争鸡',
      '天桥地下的唱见',
      '今天的李先生疲惫了',
    ];
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  padding: EdgeInsets.all(5.0),
                  alignment: Alignment(0, 0),
                  child: Swiper(
                    layout: SwiperLayout.DEFAULT,
                    itemBuilder: _swiperBuilder,
                    itemCount: 5,
                    pagination: new SwiperPagination(
                        alignment: Alignment.bottomRight,
                        builder: DotSwiperPaginationBuilder(
                          color: Colors.white,
                          activeColor: Colors.red,
                        )),
                    control: new SwiperControl(
                      iconNext: null,
                      iconPrevious: null,
                    ),
                    scrollDirection: Axis.horizontal,
                    autoplay: true,
                    onTap: (index) => print('点击了第$index个'),
                  ),
                ),
              ],
            );
          } else {
            return Container(
//              color: Colors.teal,
              width: 375.0,
              height: 980.0,
//                color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: new GridView.builder(
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                  //SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
                  //横轴的最大长度
                  maxCrossAxisExtent: 180.0,
                  //主轴间隔
                  mainAxisSpacing: 10.0,
                  //横轴间隔
                  crossAxisSpacing: 5.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.5),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 1),
                            blurRadius: 1.0,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0)),
                              child: new Image.network(
                                videoImages[index],
                                width: 178,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                bottom: 5,
                                left: 3.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.play_circle_outline,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '1630  ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0),
                                    ),
                                    Icon(
                                      Icons.hourglass_empty,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' 96',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0),
                                    ),
                                    Text(
                                      '           7:25',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50.0,
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                videoContents[index],
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
//                                    color: Colors.yellow,
                                child: Text(
                                  '内容源自：【哔哩哔哩】',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            );
          }
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomeTopView extends StatefulWidget {
  @override
  _HomeTopViewState createState() => _HomeTopViewState();
}

class _HomeTopViewState extends State<HomeTopView>
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
      "https://i0.hdslb.com/bfs/archive/98bd350a5910f63fc4b3119f3122f7a9840ddffa.jpg",
      "https://i0.hdslb.com/bfs/sycp/creative_img/201903/cf1f947a3a08a29fc8918a7eb37b60da.jpg",
      "https://i0.hdslb.com/bfs/sycp/creative_img/201903/9e46721bde13c743d63b55d82be1d113.jpg",
      "https://i0.hdslb.com/bfs/archive/40462bdb70b72ccd29e5799de309f35842151e1b.jpg",
      "https://i0.hdslb.com/bfs/archive/07c5efa52fdfaa828ad00313fc8053c13fd221f1.jpg",
    ];
    return (ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Container(
              child: Image.network(
                images[index],
                height: 150.0,
                scale: 0.1,
                fit: BoxFit.cover,
              ), // 用Container实现图片圆角的效果
            ))
//          Image.network( images[index],height: 200.0, )
        );
  }

  @override
  Widget build(BuildContext context) {
    var contents = [
      '英雄联盟',
      '守望先锋',
      'APEX英雄',
      '视频聊天',
      '全部标签',
      '单机',
      '娱乐',
      '电台',
      '绘画',
      '虚拟主播',
    ];
    var iconImages = [
      'http://bpic.588ku.com/element_list_pic/19/03/07/79dd37a64bb4c08ae6a8a1f0a0de5362.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/83dfbc772622e3e65851a67017aaaa7a.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/06/02d291da7cb1a42c956f18be6f60f37b.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/e4642455a7f8eafd50ba903c726dae5d.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/cd6c889aef0ef5081414d3191a32afdc.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/4818093906ca368b486148d9454011dd.jpg!/fw/254/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/e4642455a7f8eafd50ba903c726dae5d.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/07da55d24d7f24a0ca4fb45b711210b2.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/38f84445cb3fd13204bec553674481c4.jpg!/fw/254/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/a08443e9cd9447031f2f3f41e20646f7.jpg!/fw/254/quality/90/unsharp/true/compress/true',
    ];
    var videoContents = [
      'OWL 洛杉矶英勇队vs休..',
      '游戏少女 萌新第四天',
      '王者荣耀带你看懂二狗',
      '鬼泣5',
      '6110分继续刚',
      '英雄联盟LEC赛区-春季赛',
      'apex emmm',
      '与仙争鸡',
      '天桥地下的唱见',
      '今天的李先生疲惫了',
    ];
    var videoDetailContents = [
      '守望先锋.',
      '刀塔自走棋',
      '第五人格',
      '绝地求生',
      '穿越火线',
      '英雄联盟',
      '地下城',
      '拳皇',
      '唱见',
      '段子天下',
    ];
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

    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 4,
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
          } else if (position == 1) {
            return Container(
//              color: Colors.teal,
              width: 375.0,
              height: 160.0,
              padding: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 0),
              child: new GridView.builder(
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                  //SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
                  //横轴的最大长度
                  maxCrossAxisExtent: 75.0,
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
                      new Image.network(
                        iconImages[index],
                        width: 75,
                        height: 44,
                        fit: BoxFit.cover,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 20.0,
                        child: Text(
                          contents[index],
                          style: TextStyle(fontSize: 14.0),
                        ),
                      )
                    ],
                  );
                },
                itemCount: 10,
              ),
            );
          } else if (position == 2) {
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
                          '推荐直播',
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              '查看更多',
                              style:
                                  TextStyle(fontSize: 16.0, color: Colors.grey),
                            ),
                            Icon(
                              Icons.navigate_next,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          } else {
            return Container(
              width: 375.0,
              height: 880.0,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: new GridView.builder(
                //屏蔽GridView内部滚动；
                physics: new NeverScrollableScrollPhysics(),
                gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
                  //SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
                  //横轴的最大长度
                  maxCrossAxisExtent: 200.0,
                  //主轴间隔
                  mainAxisSpacing: 0.0,
                  //横轴间隔
                  crossAxisSpacing: 10.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      new ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              Image.network(
                                videoImages[index],
                                width: 175,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                              Positioned(
                                  bottom: 0,
                                  child: Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
//                                      mainAxisAlignment:
//                                          MainAxisAlignment.spaceBetween,
//                                      crossAxisAlignment:
//                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          videoContents[index],
                                          style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.white),
                                        ),
                                        Row(
//                                          mainAxisAlignment:
//                                              MainAxisAlignment.spaceBetween,
//                                          crossAxisAlignment:
//                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.person,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            Text(
                                              '11.8万',
                                              style: TextStyle(
                                                  fontSize: 10.0,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ))
                            ],
                          )),
                      Container(
                          alignment: Alignment.centerLeft,
                          height: 40.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                videoContents[index],
                                style: TextStyle(fontSize: 14.0),
                              ),
                              Text(
                                videoDetailContents[index],
                                style: TextStyle(
                                    fontSize: 12.0, color: Colors.grey),
                              ),
                            ],
                          ))
                    ],
                  );
                },
                itemCount: 10,
              ),
            );
          }
        });
  }
}

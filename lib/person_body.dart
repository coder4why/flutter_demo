import 'package:flutter/material.dart';
import 'post.dart';

class PersonBodyWidget extends StatefulWidget {
  @override
  _PersonBodyWidgetState createState() => _PersonBodyWidgetState();
}

class _PersonBodyWidgetState extends State<PersonBodyWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  _topBars() {
    var titles = ['动态', '关注', '粉丝'];
    var columes = new List<Widget>();
    for (int i = 0; i < titles.length; i++) {
      columes.add(Container(
        margin: EdgeInsets.symmetric(horizontal: i == 1 ? 30 : 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '1',
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
            Text(
              titles[i],
              style: TextStyle(color: Colors.black54, fontSize: 15),
            )
          ],
        ),
      ));
    }

    return Container(
      height: 66,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: columes,
      ),
    );
  }

  _sendReport() {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 15),
      margin: EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '成为UP主，分享你的创作',
            style: TextStyle(fontSize: 17.0),
          ),
          Container(
            width: 77,
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                border: Border.all(
                  color: Colors.pink,
                  width: 1,
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.file_upload,
                  size: 18,
                  color: Colors.pink,
                ),
                Text(
                  '投稿',
                  style: TextStyle(color: Colors.pink, fontSize: 15.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _userGridView(bool isPerson) {
    var contents = [
      '离线缓存',
      '历史记录',
      '我的收藏',
      '我的关注',
      '稍后再看',
      'B币钱包',
      '会员购中心',
      '直播中心',
    ];
    var services = [
      '大会员',
      '看视频免流量',
      '创作学院',
      '我的客服',
    ];
    var iconImages = [
      'http://bpic.588ku.com/element_list_pic/19/03/06/02d291da7cb1a42c956f18be6f60f37b.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/e4642455a7f8eafd50ba903c726dae5d.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/cd6c889aef0ef5081414d3191a32afdc.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/4818093906ca368b486148d9454011dd.jpg!/fw/254/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/e4642455a7f8eafd50ba903c726dae5d.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/07da55d24d7f24a0ca4fb45b711210b2.jpg!/fw/208/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/38f84445cb3fd13204bec553674481c4.jpg!/fw/254/quality/90/unsharp/true/compress/true',
      'http://bpic.588ku.com/element_list_pic/19/03/07/a08443e9cd9447031f2f3f41e20646f7.jpg!/fw/254/quality/90/unsharp/true/compress/true',
    ];
    return new GridView.builder(
      padding: EdgeInsets.only(top: 0),
      physics: new NeverScrollableScrollPhysics(),
      gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
        //SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
        //横轴的最大长度
        maxCrossAxisExtent: MediaQuery.of(context).size.width/4.0,
        //主轴间隔
        mainAxisSpacing: 0.0,
        //横轴间隔
        crossAxisSpacing: 0.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Container(
//          color: Colors.orangeAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: new Image.network(
                  iconImages[index],
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 20.0,
                child: Text(
                  isPerson?contents[index]:services[index],
                  style: TextStyle(fontSize: 14.0),
                ),
              )
            ],
          ),
        );
      },
      itemCount: isPerson?iconImages.length:services.length,
    );
  }

  _userCenters(bool isPerson) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 15),
            height: 54,
            alignment: Alignment.centerLeft,
            child: Text(
              isPerson?'个人中心':'我的服务',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            height: 0.5,
            color: Colors.black12,
          ),
          Container(
            color: Colors.white30,
            height: isPerson?190:100,
            child: _userGridView(isPerson),
          ),
        ],
      ),
    );
  }

  _mainContainer() {
    return Container(
      color: Colors.black12.withAlpha(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _topBars(),
          _sendReport(),
          _userCenters(true),
          _userCenters(false),
        ],
      ),
    );
  }

  _sliverGrid() {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
//        crossAxisSpacing: 8.0,
//        mainAxisSpacing: 8.0,
        childAspectRatio: 1 / 1.9,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _mainContainer();
        },
        childCount: 1,
      ),
    );
  }

  _sliver() {
    return SliverPadding(
      padding: EdgeInsets.all(0),
      sliver: _sliverGrid(),
    );
  }

  _topMsgs() {
    return Container(
      color: Colors.pink.withOpacity(0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 30, right: 15),
//            height: 30,
//            width: 80,
            child: Container(
              height: 30,
              width: 110,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.camera,
                    color: Colors.white,
                    size: 23,
                  ),
                  Icon(
                    Icons.color_lens,
                    color: Colors.white,
                    size: 23,
                  ),
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 23,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.only(left: 5),
            height: 90,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(40.0)),
                  child: Image.network(
                    'https://i0.hdslb.com/bfs/bangumi/966544071d5bfcf1d244bad7f6ce623310407db9.jpg@144w_144h.jpg',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        '85257205396_bili',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Container(
                        width: 70.0,
                        alignment: Alignment.center,
                        child: Text(
                          '注册会员',
                          style: TextStyle(color: Colors.white, fontSize: 12.0),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            )),
                      ),
                      Row(
//                    mainAxisAlignment: MainAxisAlignment.start,
//                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'B币： 0',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                          Text(
                            '硬币： 0',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 10, left: 96),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.white70,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.only(left: 10.0, right: 5),
            height: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '来吧！只有会员才知道的世界！',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.navigate_next,
                  color: Colors.white70,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _customBody() {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          expandedHeight: 190.0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: false,
            collapseMode: CollapseMode.parallax,
//            title: _topMsgs(),
            background: _topMsgs(),
//            Container(
//              color: Colors.pink.withAlpha(40),
//              ),
          ),
        ),
        _sliver(),
//        SliverSafeArea(
//          sliver: _sliver(),
//        ),
      ],
    );
  }

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
    return Scaffold(body: _customBody());
  }
}

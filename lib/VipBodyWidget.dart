import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class VipBodyWidget extends StatefulWidget {
  @override
  _VipBodyWidgetState createState() => _VipBodyWidgetState();
}

class _VipBodyWidgetState extends State<VipBodyWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  _textInput() {
    var _textEditController = TextEditingController();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        color: Colors.black12,
      ),
      height: 50.0,
//                  color: Colors.yellow,
      child: TextField(
        controller: _textEditController,
        style: TextStyle(
          decorationColor: Colors.black,
          color: Colors.black,
        ),
//                    keyboardType: TextInputType.number,
        decoration: InputDecoration(
          fillColor: Colors.black26,
          prefixStyle: TextStyle(color: Colors.white),
          border: InputBorder.none,
          //去掉下划线
          contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
          hintText: '手办模玩，展览演出',
          hintStyle: TextStyle(color: Colors.black26),
//                labelText: '左上角',
          prefixIcon: Icon(
            Icons.search,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }

  _tabBar() {
    var titles = ['推荐', '商品', '情报', '美图'];
    var bars = new List<Widget>();
    for (int i = 0; i < titles.length; i++) {
      bars.add(
        new Tab(
          icon: Text(
            titles[i],
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    }
    return new TabBar(
      indicatorColor: Colors.red,
      indicatorSize: TabBarIndicatorSize.label,
      tabs: bars,
      controller: _tabController,
    );
  }

  _subColume() {
    var titles = [
      '【定格动画】高达模型跳极乐净',
      '【官方】蔡依林《消极掰》MV它',
      '它曾是诺基亚「翻身」的希望，却也是塞班最后的挣扎',
      '【极客博物馆第三十期】【欧美混剪】一个视频感受2019奥斯卡高分获奖电影',
      '【欧美混剪】一个视频感受2019奥斯卡高分获奖电影',
    ];

    var items = new List<Widget>();
    for (int i = 0; i < titles.length; i++) {
      items.add(Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 50,
              width: 160,
              alignment: Alignment.center,
              child: Text(
                titles[i],
                style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_red_eye,
                          size: 10.0,
                          color: Colors.black54,
                        ),
                        Text(
                          ' 187',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_red_eye,
                          size: 10.0,
                          color: Colors.black45,
                        ),
                        Text(
                          ' 187',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.remove_red_eye,
                          size: 10.0,
                          color: Colors.black45,
                        ),
                        Text(
                          ' 187',
                          style:
                              TextStyle(color: Colors.black45, fontSize: 12.0),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ));
    }
    return items;
  }

  _listView() {
    var images = [
      'https://i0.hdslb.com/bfs/archive/1ebae9d622967b8e4a356be04ab2583b28453df2.jpg@320w_200h.jpg',
      'https://i1.hdslb.com/bfs/archive/dde421bfa0db878e2d2e5a7db9e67db9c81126ed.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/7b896783d2c228912ca61848acb90dcb0c5bebac.png@320w_200h.png',
      'https://i1.hdslb.com/bfs/archive/896969a3441e36a8a05f42e2a8f15d6bd5b04459.jpg@320w_200h.jpg',
      'https://i1.hdslb.com/bfs/archive/5b9df5c21cc865ea4611419b0a61b81fb25a5748.jpg@320w_200h.jpg'
    ];

    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int position) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            color: Colors.white,
            height: 110,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 100,
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        child: Image.network(
                          images[position],
                          height: 100,
                          width: 165,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: _subColume()[position],
                      ),
                    ],
                  ),
                ),
                Container(
//                  margin: EdgeInsets.only(top: 5),
                  color: Colors.black12,
                  height: 0.5,
                ),
              ],
            ),
          );
        });
  }

  _items() {
    var items = new List<ListView>();
    for (int i = 0; i < 4; i++) {
      items.add(_listView());
    }
    return TabBarView(
      controller: _tabController,
      children: items.map((item) {
        return item;
      }).toList(),
    );
  }

  _seperators() {
    var iconImages = [
      'https://i0.hdslb.com/bfs/bangumi/8d9f5b4a566d0547bc2e3f6f733b732a09c0d3d4.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/098cac1b63000954609103a4d0e4cc6d12b0fcbc.png@144w_144h.png',
      'https://i0.hdslb.com/bfs/bangumi/01fe9aba08be60c64c56e1d8e8afce66b6c3d5cc.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/7cd6c47770dc96e329fecd89f78b012267420c35.jpg@144w_144h.jpg',
      'https://i0.hdslb.com/bfs/bangumi/5d2e71f2cb44bd4e2b80d2b8845a80c685dd7bd5.jpg@144w_144h.jpg',
    ];
    var iconTitles = [
      '手办',
      '模型',
      '漫展演出',
      '周边',
      '全部分类',
    ];

    var widgets = new List<Widget>();
    for (int i = 0; i < iconImages.length; i++) {
      widgets.add(Container(
        width: 67,
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black12,
                  width: 1,
                ),
                borderRadius: BorderRadius.all(Radius.circular(67.0 / 2.0)),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.black26,
                    offset: Offset(1, 1),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(67.0 / 2.0)),
                child: Image.network(iconImages[i]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 2),
              child: Text(
                iconTitles[i],
                style: TextStyle(fontSize: 14.0),
              ),
            )
          ],
        ),
      ));
    }

    return widgets;
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

  _bands() {
    var titles = ['今日上新', '人气排行', '啥值得买'];
    var subTitles = ['也不可能上新', '因为你的热爱', '实拍评测扫盲'];
    var icons = [
      Icon(
        Icons.card_travel,
        color: Colors.pink,
        size: 20,
      ),
      Icon(
        Icons.public,
        color: Colors.pink,
        size: 20,
      ),
      Icon(
        Icons.bookmark_border,
        color: Colors.pink,
        size: 20,
      ),
    ];
    var rows = new List<Widget>();
    for (int i = 0; i < icons.length; i++) {
      rows.add(Container(
        padding: EdgeInsets.only(left: 3.0),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 2,
              color: Colors.black12,
              offset: Offset(1, 1),
            )
          ],
        ),
        height: 45,
        width: 340.0 / 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  titles[i],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  subTitles[i],
                  style: TextStyle(
                    color: Colors.black38,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Container(
              width: 35,
              alignment: Alignment(0, 0.4),
              child: icons[i],
            ),
          ],
        ),
      ));
    }

    return rows;
  }

  _swipers() {
    return Container(
      height: 150.0,
      padding: EdgeInsets.symmetric(horizontal: 10),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Container(
              color: Colors.white,
              padding: EdgeInsets.all(10),
              height: 55.0,
              alignment: Alignment.center,
              child: _textInput(),
            );
          } else if (position == 1) {
            return Container(
              alignment: Alignment.center,
              height: 83,
//              color: Colors.black12.withAlpha(10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: _seperators(),
              ),
            );
          } else if (position == 2) {
            return Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _bands(),
              ),
            );
          } else if (position == 3) {
            return _swipers();
          } else {
            return Container(
              height: 600,
              child: Column(
                children: <Widget>[
                  Container(
                    height: 40,
                    color: Colors.white,
                    child: _tabBar(),
                  ),
                  Expanded(child: _items())
                ],
              ),
            );
          }
        });
  }
}

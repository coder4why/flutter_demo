import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeZhuiFanWidget extends StatefulWidget {
  @override
  _HomeZhuiFanWidgetState createState() => _HomeZhuiFanWidgetState();
}

class _HomeZhuiFanWidgetState extends State<HomeZhuiFanWidget>
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
      'https://i0.hdslb.com/bfs/archive/87d7b44974be5926f53c22fc8a5cc2b43493deee.jpg@320w_200h.jpg',
      'https://i1.hdslb.com/bfs/archive/bd012075f056530b2768642a697229b3a93d9671.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/1675ac4596af1f39a996df1ce817ac751d03f0fa.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/2a7500d89dc7c560f1ac21abc82e4b415f73b847.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/live/user_cover/c7c9d829b01b30663dd0e188f1b861157e778737.jpg@640w_400h.jpg',
      'https://i0.hdslb.com/bfs/live/476c67151af8fb3fab3bf0f562bacc44af807f86.jpg@640w_400h.jpg',
      'https://i0.hdslb.com/bfs/live/user_cover/808d2eef36c4c72f651a28478f1eb41761a82947.jpg@640w_400h.jpg',
      'https://i0.hdslb.com/bfs/live/room_cover/c8e2cc14c14a02293ac1bff8eaab9feaa8f0e90b.jpg@640w_400h.jpg',
      'https://i0.hdslb.com/bfs/live/room_cover/3c25a8e982cf9d98dde76bea62880ad7c0a70738.jpg@640w_400h.jpg',
      'https://i2.hdslb.com/bfs/archive/2affd37e0860b63ecb36179fe372d1975c1c4906.jpg@320w_200h.jpg'
    ];

    return Container(
      padding: EdgeInsets.all(3),
      child: new StaggeredGridView.countBuilder(
          crossAxisCount: 4,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) => new Container(
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(3)),
                        child: Image.network(
                          images[index % 10],
                          fit: BoxFit.cover,
                          height: 180,
                          width: (MediaQuery.of(context).size.width - 12) / 2.0,
                        )),
                  ],
                ),
              ),
          staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 : 1.5),
          mainAxisSpacing: 2.0,
          crossAxisSpacing: 2.0),
    );
  }
}

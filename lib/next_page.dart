import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: 'https://github.com/HuPingKang/flutter_demo',
      appBar: AppBar(
        title: Text('详情'),
//        actions: <Widget>[
//          GestureDetector(
//            onTap: () {
//            },
//            child: Image.asset('img/icon_menu_share.png'),
//          )
//        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../me/mine.dart';
import 'indexPage.dart';
import '../notice/notice.dart';
import '../site/site.dart';

//项目首页
class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return new _HomePageState();
  }
}

class _HomePageState extends State<Home> {
  int _currentIndex = 0; //当前页的下标

  List<StatefulWidget> _pages; //底部item页面集合

  List<BottomNavigationBarItem> _item;

  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();

    _item = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(
          icon: new Icon(Icons.directions_railway ), title: new Text("出行")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.departure_board), title: new Text("站点")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.notifications_active), title: new Text("公告")),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.perm_identity), title: new Text("我的")),
    ];

    _pages = <StatefulWidget>[
      new IndexPage(),
      new SitePage(),
      new Notice(),
      new Mine(),
    ];

    _currentPage = _pages[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = new BottomNavigationBar(
      items: _item,
      currentIndex: _currentIndex,
      fixedColor: Colors.green,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
          _currentPage = _pages[_currentIndex];
        });
      },
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: _currentPage,
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}

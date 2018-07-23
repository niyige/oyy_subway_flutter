import 'package:flutter/material.dart';
import 'notice_items.dart';

//公告相关
class Notice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NoticePageState();
  }
}

class NoticePageState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: new TabBar(
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
              new Tab(text: "运营公告",),
              new Tab(text: "运营新闻"),
              new Tab(text: "运营政策"),
              new Tab(text: "安全知识"),
            ]),
          ),
          body: new TabBarView(children: [
            new NoticeItems(),
            new NoticeItems(),
            new NoticeItems(),
            new NoticeItems(),
          ]),
        ));
  }
}

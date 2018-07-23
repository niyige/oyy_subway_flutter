import 'package:flutter/material.dart';

class SitePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new SitePageState();
  }
}

class SitePageState extends State<SitePage> {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Text('暂无站点',
            style: new TextStyle(fontSize: 15.0, color: Colors.green)),
      ),
    );
  }
}

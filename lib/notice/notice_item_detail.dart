import 'package:flutter/material.dart';
import 'package:oyy_subway_flutter/config.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class NoticeItemDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NoticeItemDetailState();
  }
}

class NoticeItemDetailState extends State<NoticeItemDetail> {
  @override
  Widget build(BuildContext context) {
    Widget _titleLayout() {
      return new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          new FlatButton(
              padding: EdgeInsets.only(right: 40.0),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: new Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          new Expanded(

              child: Container(
            child: new Text("公告详情"),
          )),
          new Container(
            child: new Text("分享", style: new TextStyle(fontSize: 15.0)),
          )
        ],
      );
    }

    return new MaterialApp(
      theme: Config.themeData,
      home: new WebviewScaffold(
        appBar: new AppBar(
          leading: new IconButton(
            padding: EdgeInsets.all(2.0),
            icon: new Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          centerTitle: true,
          title: new Text("我是标题"),
          actions: <Widget>[
            new Container(
              margin: EdgeInsets.only(right: 15.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    child: new Text("分享"),

                  ),
                ],
              ),
            )

          ],
        ),
        url: 'https://www.baidu.com/',
        withZoom: true,
        withLocalStorage: true,
      ),
    );
  }
}

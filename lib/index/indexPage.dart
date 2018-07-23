import 'package:flutter/material.dart';
import '../config.dart';

class IndexPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IndexPageState();
  }
}

class IndexPageState extends State<IndexPage> {
  //搜索框
  Widget _barSearch() {
    return new Container(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          new Container(
            child: Image.asset('images/sub_way_img.png'),
            width: 25.0,
            height: 25.0,
          ),
          new Expanded(
              child: new Container(
                  padding: EdgeInsets.only(
                      left: 5.0, top: 5.0, bottom: 5.0, right: 5.0),
                  margin: EdgeInsets.only(left: 10.0, right: 15.0),
                  child: new Row(
                    children: <Widget>[
                      new Container(
                        margin: EdgeInsets.only(right: 5.0),
                        child: new Icon(
                          Icons.search,
                          size: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                      new Text("搜索站点",
                          style: new TextStyle(
                              fontSize: 15.0, color: Colors.grey)),
//                      new Container(
//                        child: new FlatButton(
//                          onPressed: () {},
//                          child: new Icon(Icons.settings_overscan, size: 15.0),
//                        ),
//                        width: 40.0,
//                        height: 18.0,
//                      ),
                    ],
                  ),
                  decoration: new BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(4.0)),
                      color: Config.searchBackgroundColor))),
          new Text("+"),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: Config.themeData,
      home: new Scaffold(
        appBar: new AppBar(
          title: _barSearch(),
        ),
        body: new Container(
          child: new Center(
            child: new Image(
                image: new AssetImage('images/xianlu.png')),
          ),
        ),
        floatingActionButton: new FloatingActionButton(
            child: Image.asset('images/sub_way_img.png'),
            onPressed: null,
            tooltip: '乘车码',

        ),
      ),
    );
  }
}

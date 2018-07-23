import 'package:flutter/material.dart';

class Mine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MinePageState();
  }
}

class MinePageState extends State<Mine> {
  Widget _header() {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(
                top: 60.0, left: 20.0, bottom: 10.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new CircleAvatar(
                  child: Image.asset('images/touxiang.png'),
                  radius: 40.0,
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("150****1111"),
                        new Text("青铜会员"),
                      ],
                    ),
                  ),
                ),
                new Container(
                  decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(4.0)),
                  ),
                  padding: EdgeInsets.only(
                      left: 10.0, top: 5.0, right: 10.0, bottom: 5.0),
                  child: new Row(
                    children: <Widget>[
                      new Icon(
                        Icons.assignment,
                        size: 18.0,
                        color: Colors.green,
                      ),
                      new Container(
                        margin: EdgeInsets.only(left: 5.0),
                        child: new Text("签到",
                            style: new TextStyle(
                                fontSize: 12.0, color: Colors.green)),
                      ),
                    ],
                  ),
                )
              ],
            ),
            decoration: new BoxDecoration(color: Colors.green),
          ),
          new Container(
              decoration: new BoxDecoration(color: Colors.green),
              padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
              child: new Row(
                children: <Widget>[
                  new Expanded(
                      child: new Column(
                    children: <Widget>[
                      new Text(
                        '10',
                        style:
                            new TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      new Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: new Text('积分',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 12.0)),
                      )
                    ],
                  )),
                  new Expanded(
                      child: new Column(
                    children: <Widget>[
                      new Text(
                        '234.4',
                        style:
                            new TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                      new Container(
                        margin: EdgeInsets.only(top: 5.0),
                        child: new Text('里程(km)',
                            style: new TextStyle(
                                color: Colors.white, fontSize: 12.0)),
                      )
                    ],
                  ))
                ],
              )),
        ],
      ),
    );
  }

  //内容
  Widget _contentView() {
    return new Container(
      child: new Stack(
        children: <Widget>[
          new Align(
            child: new Opacity(
                opacity: 1.0,
                child: new Container(
                  height: 80.0,
                  color: Colors.green,
                )),
          ),
          new Align(
            child: new Container(
              margin: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      const BorderRadius.all(const Radius.circular(6.0))),
              child: new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                  bottom:
                                      new BorderSide(color: Colors.black12))),
                        )),
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                  bottom:
                                      new BorderSide(color: Colors.black12))),
                        )),
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                  bottom:
                                      new BorderSide(color: Colors.black12))),
                        )),
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                  bottom:
                                      new BorderSide(color: Colors.black12))),
                        )),
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                  bottom:
                                      new BorderSide(color: Colors.black12))),
                        )),
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
                                  bottom:
                                      new BorderSide(color: Colors.black12))),
                        )),
                    new Container(
                        margin: EdgeInsets.only(left: 4.0, right: 4.0),
                        padding: EdgeInsets.only(left: 15.0, right: 12.0),
                        height: 60.0,
                        child: new Container(
                          child: new Row(
                            children: <Widget>[
                              new Container(
                                child: new Icon(Icons.access_time, size: 20.0),
                                margin: const EdgeInsets.only(right: 12.0),
                              ),
                              new Expanded(
                                  child: new Text("我的收藏",
                                      style: new TextStyle(
                                          color: Colors.grey, fontSize: 14.0))),
                              new Container(
                                  child: new Icon(
                                Icons.chevron_right,
                                color: Colors.grey,
                              ))
                            ],
                          ),
                          decoration: new BoxDecoration(
                              border: new BorderDirectional(
//                                  bottom:
//                                      new BorderSide(color: Colors.black12)
                              )
                          ),
                        )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
          body: new SingleChildScrollView(
        child: new Container(
          margin: EdgeInsets.only(bottom: 15.0),
          child: new Column(
            children: <Widget>[
              _header(),
              _contentView(),
            ],
          ),
        ),
      )),
    );
  }
}

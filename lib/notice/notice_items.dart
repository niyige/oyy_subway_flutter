import 'package:flutter/material.dart';
import 'notice_item_detail.dart';

class NoticeItems extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new NoticeItemsPageState();
  }
}

class NoticeItemsPageState extends State<NoticeItems> {
  var _item = <String>[];

  @override
  void initState() {
    super.initState();
    _item = <String>[
      "凑行数",
      "凑行数",
      "凑行数",
      "凑行数",
      "凑行数",
      "凑行数",
      "凑行数",
      "凑行数",
    ];
  }


  @override
  Widget build(BuildContext context) {

    return new Center(
        child: new ListView.builder(
            padding: EdgeInsets.only(left: 5.0, top: 10.0, bottom: 10.0),
            itemBuilder: (context, i) {
              if(i > _item.length) {
                return null;
              }
              return new FlatButton(
                  onPressed: (){
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) {
                          return new NoticeItemDetail();
                        }
                    ));
                  },
                  child: new Container(
                      margin: EdgeInsets.only(top: 10.0),
                      child: new Column(
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              new Container(
                                child: Image.asset('images/sub_way_img.png'),
                                width: 45.0,
                                height: 45.0,
                              ),
                              new Container(
                                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                                child: new Column(
                                  children: <Widget>[
                                    new Text("票价计费规则",
                                        style: new TextStyle(
                                            fontSize: 15.0, color: Colors.black)),
                                    new Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child: new Text("2018-05-30 17:20",
                                          style: new TextStyle(
                                              fontSize: 12.0, color: Colors.grey)),
                                    )
                                  ],
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                ),
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          new Divider(),
                        ],
                      )
                  ));
            }));
  }
}

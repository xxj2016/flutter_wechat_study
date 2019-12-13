import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  FocusNode focusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25.0),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: EdgeInsets.only(left: 50.0, right: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.green))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          style: TextStyle(color: Colors.black, fontSize: 16.0),
                          onChanged: (String text) {},
                          decoration: InputDecoration(
                              hintText: '搜索', border: InputBorder.none),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Text(
                  '搜索指定文章',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xffb5b5b5),
                  ),
                )),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '小程序',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffb5b5b5),
                    ),
                  ),
                  Text(
                    '小程序',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffb5b5b5),
                    ),
                  ),
                  Text(
                    '小程序',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffb5b5b5),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    '小程序',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffb5b5b5),
                    ),
                  ),
                  Text(
                    '小程序',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffb5b5b5),
                    ),
                  ),
                  Text(
                    '小程序',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xffb5b5b5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

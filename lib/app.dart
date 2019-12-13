import 'package:flutter/material.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: ((index) {}),
        items: [
          BottomNavigationBarItem(
              title: Text("微信",
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? Color(0xff46c01b)
                          : Color(0xff999999))),
              icon: _currentIndex == 0
                  ? Icon(
                      Icons.message,
                      color: Colors.green,
                    )
                  : Icon(Icons.message)),
          BottomNavigationBarItem(
              title: Text("通讯录",
                  style: TextStyle(
                      color: _currentIndex == 1
                          ? Color(0xff46c01b)
                          : Color(0xff999999))),
              icon: _currentIndex == 1
                  ? Icon(
                      Icons.contacts,
                      color: Colors.green,
                    )
                  : Icon(Icons.contacts)),
          BottomNavigationBarItem(
              title: Text("发现",
                  style: TextStyle(
                      color: _currentIndex == 2
                          ? Color(0xff46c01b)
                          : Color(0xff999999))),
              icon: _currentIndex == 2
                  ? Icon(
                      Icons.timer,
                      color: Colors.green,
                    )
                  : Icon(Icons.timer)),
          BottomNavigationBarItem(
              title: Text("我",
                  style: TextStyle(
                      color: _currentIndex == 3
                          ? Color(0xff46c01b)
                          : Color(0xff999999))),
              icon: _currentIndex == 3
                  ? Icon(
                      Icons.person,
                      color: Colors.green,
                    )
                  : Icon(Icons.person)),
        ],
      ),
      body: Container(),
    );
  }
}

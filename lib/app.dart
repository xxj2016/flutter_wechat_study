import 'package:flutter/material.dart';

enum ItemType { GroupChat, AddFriends, QrCode, Payments, Help }

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;

  /* MessagePage message;
  Contacts contacts;
  Found found;
  Personal me; */
  // currentPage() {
  //   switch (_currentIndex) {
  //     case 0:
  //       if (message == null) {
  //         message = MessagePage();
  //       }
  //       return message;
  //       break;
  //     case 1:
  //       if (contacts == null) {
  //         contacts = Contacts();
  //       }
  //       return contacts;
  //       break;
  //     case 0:
  //       if (found == null) {
  //         found = Found();
  //       }
  //       return found;
  //       break;
  //     case 0:
  //       if (me == null) {
  //         me = Personal();
  //       }
  //       return me;
  //       break;
  //     default:
  //   }
  // }

  _popupMenuItem(String title, {String imagePath,IconData icon}) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          imagePath != null
          ? Image.network(imagePath,width: 32.0,height: 32.0)
          : SizedBox(width: 32.0,height: 32.0,child: Icon(icon, color: Colors.white)),
          Container(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              // Navigator.pushNamed(context, 'search');
            },
            child: Icon(
              Icons.search
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: (){
                showMenu(context: context,
                position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                items: <PopupMenuItem>[
                  _popupMenuItem('发起群聊', icon: Icons.message),
                  _popupMenuItem('添加朋友', icon: Icons.add),
                  _popupMenuItem('扫一扫', icon: Icons.settings_overscan),
                  _popupMenuItem('收付款', icon: Icons.crop_free),
                  _popupMenuItem('帮助与反馈', icon: Icons.email),
                ]);
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
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
      // body: currentPage(),
    );
  }
}

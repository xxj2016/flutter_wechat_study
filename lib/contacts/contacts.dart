import 'package:flutter/material.dart';
import 'package:wechat/contacts/contact_header.dart';
import 'package:wechat/contacts/contact_item.dart';
import 'package:wechat/contacts/contact_sider_list.dart';
import 'package:wechat/contacts/contact_vo.dart';

class Contacts extends StatefulWidget {
  Contacts({Key key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContactSiderList(
        items: contactData,
        headerBuilder: (BuildContext text, int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        itemBuilder: (BuildContext text, int index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              item: contactData[index],
            ),
          );
        },
        sectionBuilder: (BuildContext text, int index) {
          return Container(
            height: 32.0,
            padding: EdgeInsets.only(left: 14.0),
            color: Colors.grey[300],
            alignment: Alignment.centerLeft,
            child: Text(
              contactData[index].seationKey,
              style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
            ),
          );
        },
      ),
    );
    ;
  }
}

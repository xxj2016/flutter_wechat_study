import 'package:flutter/material.dart';
import 'package:wechat/contacts/contact_item.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ContactItem(titleName: '新的朋友', imageName: 'http://p3.music.126.net/TVzvnRLBdXS8UhMLARIy3Q==/109951163513338515.jpg?param=200y200'),
        ContactItem(titleName: '群聊', imageName: 'http://p3.music.126.net/TVzvnRLBdXS8UhMLARIy3Q==/109951163513338515.jpg?param=200y200'),
        ContactItem(titleName: '公众号', imageName: 'http://p3.music.126.net/TVzvnRLBdXS8UhMLARIy3Q==/109951163513338515.jpg?param=200y200'),
      ],
    );
  }
}
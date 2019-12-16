import 'package:flutter/material.dart';
import 'package:wechat/contacts/contact_vo.dart';

class ContactItem extends StatelessWidget {
  final ContactVO item;
  final String titleName;
  final String imageName;

  const ContactItem({
    Key key,
    this.item,
    this.titleName,
    this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xffd9d9d9))),
      ),
      height: 52.0,
      child: FlatButton(
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            imageName == null
                ? Image.network(
                    item.avatarUrl != ''
                        ? item.avatarUrl
                        : 'http://p3.music.126.net/TVzvnRLBdXS8UhMLARIy3Q==/109951163513338515.jpg?param=200y200',
                    width: 36.0,
                    height: 36.0,
                    scale: 0.9,
                  )
                : Image.network(
                    imageName,
                    width: 36.0,
                    height: 36.0,
                  ),
            Container(
              margin: EdgeInsets.only(left: 12.0),
              child: Text(
                titleName == null ? item.name ?? '暂时' : titleName,
                style: TextStyle(fontSize: 18.0, color: Color(0xff353535)),
                maxLines: 1,
                overflow: TextOverflow.ellipsis ,
              ),
            )
          ],
        ),
      ),
    );
  }
}

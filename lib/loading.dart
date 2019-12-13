import 'dart:async';

import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  LoadingPage({Key key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  @override
  void initState() { 
    super.initState();
    Timer(Duration(seconds: 3), (){
      print("启动中");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }
  Widget build(BuildContext context) {
    return Container(
       child: Image.network("https://img.zcool.cn/community/011de45816bdc8a84a0e282ba5b95a.jpg@1280w_1l_2o_100sh.jpg", fit: BoxFit.cover),
    );
  }
}
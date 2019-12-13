import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:wechat/app.dart';
import 'package:wechat/loading.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Wechat',
      theme: mDefaultTheme,
      routes: <String,WidgetBuilder> {
        "app": (BuildContext context) => App(),
        "/friend": (_) => WebviewScaffold(
          url: 'https://weixin.qq.com/',
          appBar: AppBar(
            title: Text('朋友圈'),
          ),
          withZoom: true,
          withLocalStorage: true,
        )
      },
      home: LoadingPage(),
    );
  }
}

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xffebebeb),
  cardColor: Color(0xff393a3f)
);
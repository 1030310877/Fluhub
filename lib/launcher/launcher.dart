import 'package:fluhub/login/login.dart';
import 'package:fluhub/res/string.dart';
import 'package:flutter/material.dart';

///
/// 欢迎启动页，在这里判定是否是已登录状态。
///
class Launcher extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: ConstString.appName,
        home: Splash(),
        routes: <String, WidgetBuilder>{'/login': (_) => new Login()});
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        '/login',
        (route) => route == null,
      );
    });
    return Scaffold(
      body: Center(
        child: new Text('Launcher'),
      ),
    );
  }
}

import 'package:fluhub/login/login.dart';
import 'package:fluhub/main/homepage.dart';
import 'package:fluhub/mgr/auth_mgr.dart';
import 'package:fluhub/res/string.dart';
import 'package:fluhub/util/screenutil.dart';
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
      routes: <String, WidgetBuilder>{
        '/login': (_) => new Login(),
        '/homepage': (_) => new HomePage(),
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.screenWidth = MediaQuery.of(context).size.width;
    ScreenUtil.screenHeight = MediaQuery.of(context).size.height;
    ScreenUtil.statusBarHeight = MediaQuery.of(context).padding.top;
    Future.delayed(Duration(seconds: 2), () async {
      String token = await AuthMgr.getInstance().getAccessToken();
      if (token != null && token.isNotEmpty) {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/homepage',
          (route) => route == null,
        );
      } else {
        Navigator.of(context).pushNamedAndRemoveUntil(
          '/login',
          (route) => route == null,
        );
      }
    });
    return Scaffold(
      body: Center(
        child: new Text('Launcher'),
      ),
    );
  }
}

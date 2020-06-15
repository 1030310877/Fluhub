import 'package:fluhub/mgr/user_mgr.dart';
import 'package:fluhub/model/user_res.dart';
import 'package:fluhub/res/color.dart';
import 'package:fluhub/util/screenutil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'contentview.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              right: 8,
              bottom: 0,
              child: ContentView(),
            ),
            Positioned(
              left: 0,
              top: ScreenUtil.statusBarHeight,
              bottom: 0,
              child: SlideTabBar(
                width: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlideTabBar extends StatefulWidget {
  final double width;

  const SlideTabBar({Key key, this.width}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return SlideTabBarState();
  }
}

class SlideTabBarState extends State<SlideTabBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      padding: EdgeInsets.only(
        top: 4,
        bottom: 4,
      ),
      decoration: BoxDecoration(
        color: ConstColor.color1,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          AvatarImage(),
          IconButton(
            icon: SvgPicture.asset(
              'assets/ic_home.svg',
              width: 28,
              height: 28,
              color: ConstColor.white,
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/ic_home.svg',
              width: 28,
              height: 28,
              color: ConstColor.white,
            ),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/ic_home.svg',
              width: 28,
              height: 28,
              color: ConstColor.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(),
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/ic_search.svg',
              width: 28,
              height: 28,
              color: ConstColor.white,
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarImage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AvatarImageState();
  }
}

class AvatarImageState extends State<AvatarImage> {
  UserRes _self;

  @override
  void initState() {
    super.initState();
    UserMgr.getInstance().getSelf().then((value) {
      setState(() {
        _self = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget c;
    if (_self == null) {
      c = SvgPicture.asset(
        'assets/github_avatar.svg',
        color: ConstColor.color1,
        width: 52,
        height: 52,
      );
    } else {
      c = Image.network(
        _self.avatarUrl,
        width: 52,
        height: 52,
      );
    }
    return ClipRRect(
      borderRadius: BorderRadius.circular(26),
      child: c,
    );
  }
}

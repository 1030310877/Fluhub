import 'package:fluhub/mgr/user_mgr.dart';
import 'package:fluhub/model/user_res.dart';
import 'package:fluhub/res/color.dart';
import 'package:fluhub/ui/icon_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BasicInfoCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BasicInfoCardState();
  }
}

class BasicInfoCardState extends State<BasicInfoCard> {
  int starNum = 1;
  int followersNum = 0;
  int followingNum = 0;

  @override
  void initState() {
    super.initState();

    UserMgr.getInstance().getSelf().then((value) {
      if (value != null) {
        setState(() {
          starNum = 1;
          followersNum = value.followers;
          followingNum = value.following;
        });
      }
    });
    starNum = 1;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: ConstColor.color3,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
        padding: EdgeInsets.fromLTRB(4, 16, 0, 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: IconLabel(
                  spacing: 8,
                  icon: SvgPicture.asset(
                    'assets/ic_follower.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                  labelText: Text(
                    '$followersNum',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: IconLabel(
                  spacing: 8,
                  icon: SvgPicture.asset(
                    'assets/ic_following.svg',
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                  labelText: Text(
                    '$followingNum',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

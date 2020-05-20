import 'package:fluhub/mgr/user_mgr.dart';
import 'package:fluhub/model/user_res.dart';
import 'package:fluhub/res/color.dart';
import 'package:fluhub/ui/icon_label.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class NameCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NameCardState();
  }
}

class NameCardState extends State<NameCard> {
  UserRes _userRes;

  @override
  void initState() {
    super.initState();
    UserMgr.getInstance().getSelf().then((value) {
      setState(() {
        _userRes = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: ConstColor.color2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0))),
      child: Container(
        height: 150,
        padding: EdgeInsets.fromLTRB(4, 0, 0, 4),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              right: -40,
              bottom: 0,
              child: SvgPicture.asset(
                'assets/github_avatar.svg',
                color: Colors.white,
                fit: BoxFit.cover,
                width: 120,
                height: 100,
              ),
            ),
            Positioned(
              left: 8,
              top: 8,
              bottom: 8,
              right: 70,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _userRes == null ? '' : '${_userRes.name}',
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 12, bottom: 6),
                    child: IconLabel(
                      icon: SvgPicture.asset(
                        'assets/ic_email.svg',
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      labelText: Text(
                        _userRes == null ? '' : '${_userRes.email}',
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6, bottom: 6),
                    child: IconLabel(
                      icon: SvgPicture.asset(
                        'assets/ic_location.svg',
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      labelText: Text(
                        _userRes == null ? '' : '${_userRes.location}',
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    child: IconLabel(
                      icon: SvgPicture.asset(
                        'assets/ic_blog.svg',
                        width: 20,
                        height: 20,
                        color: Colors.white,
                      ),
                      labelText: Text(
                        _userRes == null ? '' : '${_userRes.blog}',
                        maxLines: 1,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

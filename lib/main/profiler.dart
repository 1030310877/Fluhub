import 'package:fluhub/res/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return NameCard();
        }
        return Container();
      },
    );
  }
}

class NameCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
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
                    'Joe Chan',
                    maxLines: 1,
                    softWrap: false,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  FlatButton.icon(
                    onPressed: null,
                    icon: SvgPicture.asset(
                      'assets/ic_email.svg',
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                    label: Text(
                      '1030310877@qq.com',
                      maxLines: 1,
                      style: TextStyle(color: Colors.white),
                    ),
                    padding: EdgeInsets.zero,
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

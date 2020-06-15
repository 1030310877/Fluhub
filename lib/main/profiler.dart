import 'package:fluhub/api/api_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'profiler/infocard.dart';
import 'profiler/namecard.dart';

class ProfilerView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfilerState();
  }
}

class ProfilerState extends State<ProfilerView> {
  bool _isRequestEvent = true;

  @override
  void initState() {
    super.initState();
    ApiEvent.getOwnEvents().then((res) {
      if (res.succeed) {
      } else {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this._isRequestEvent ? 3 : 2,
      itemBuilder: (context, index) {
        if (index == 0) {
          return NameCard();
        } else if (index == 1) {
          return BasicInfoCard();
        } else {
          return Text(
            'Loading',
            style: TextStyle(color: Colors.black, fontSize: 22),
          );
        }
        return Container();
      },
    );
  }
}

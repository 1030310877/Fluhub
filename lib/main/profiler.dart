import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'profiler/infocard.dart';
import 'profiler/namecard.dart';

class ProfilerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        if (index == 0) {
          return NameCard();
        } else if (index == 1) {
          return BasicInfoCard();
        }
        return Container();
      },
    );
  }
}

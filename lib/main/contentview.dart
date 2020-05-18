import 'package:flutter/widgets.dart';

import 'profiler.dart';

class ContentView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentViewState();
  }
}

class ContentViewState extends State<ContentView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: PageView.builder(
        itemCount: 4,
        scrollDirection: Axis.vertical,
        controller: PageController(),
        itemBuilder: (context, index) {
          if (index == 0) {
            return ProfilerView();
          }
          return Text('$index');
        },
      ),
    );
  }
}

import 'package:flutter/widgets.dart';

import 'profiler.dart';

class ContentView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentViewState();
  }
}

class ContentViewState extends State<ContentView> {
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        controller: _controller,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: EdgeInsets.only(left: 60),
              child: ProfilerView(),
            );
          }
          return Text('$index');
        },
      ),
    );
  }
}

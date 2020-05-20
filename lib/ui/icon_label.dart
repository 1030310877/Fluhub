import 'package:flutter/widgets.dart';

class IconLabel extends StatelessWidget {
  final Widget icon;
  final Widget labelText;
  final double spacing;

  const IconLabel({Key key, this.icon, this.labelText, this.spacing = 2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        icon,
        Container(
          width: spacing,
          height: 0,
        ),
        labelText,
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ScreenIconButton extends StatelessWidget {
  ScreenIconButton(
      {@required this.icon,
        @required this.text,
        this.onTap,
        this.backgroundColor = Colors.blue,
        this.foregroundColor = Colors.white,
        this.iconSize = 75,
        Key key})
      : super(key: key);

  final IconData icon;
  final String text;
  final Function onTap;
  final Color foregroundColor;
  final Color backgroundColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      child: Material(
        color: backgroundColor,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.all(25),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                icon,
                color: foregroundColor,
                size: iconSize,
              ),
              Text(
                text,
                textScaleFactor: 2,
                style: TextStyle(color: foregroundColor),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
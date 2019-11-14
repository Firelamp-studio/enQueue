import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreenIconButton extends StatefulWidget {
  AnimatedScreenIconButton(
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
  _AnimatedScreenIconButtonState createState() =>
      _AnimatedScreenIconButtonState();
}

class _AnimatedScreenIconButtonState extends State<AnimatedScreenIconButton>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 4))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints.expand(),
      child: Material(
        color: widget.backgroundColor,
        child: InkWell(
          onTap: widget.onTap,
          child: Padding(
            padding: EdgeInsets.all(25),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              AnimatedBuilder(
                  animation: _controller,
                  child: Icon(
                    widget.icon,
                    color: widget.foregroundColor,
                    size: widget.iconSize,
                  ),
                builder: (context, child) {
                  return Transform.rotate(
                    angle: Tween(begin: 0, end: 2 * pi).animate(_controller).value,
                    child: child,
                  );
                }),
              Text(
                widget.text,
                textScaleFactor: 2,
                style: TextStyle(color: widget.foregroundColor),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

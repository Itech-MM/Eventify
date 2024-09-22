import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final Widget content;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;

  const CustomCircleAvatar({
    Key? key,
    required this.content,
    this.radius = 30.0,
    this.backgroundColor = Colors.blue,
    this.borderColor = Colors.white,
    this.borderWidth = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2 + borderWidth * 2,
      height: radius * 2 + borderWidth * 2,
      padding: EdgeInsets.all(borderWidth),
      decoration: BoxDecoration(
        color: borderColor,
        shape: BoxShape.circle,
      ),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: ClipOval(
          child: SizedBox(
            width: radius * 2,
            height: radius * 2,
            child: content,
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget{
  final Widget child;

  const AppContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blueAccent],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.4, 0.7],
          tileMode: TileMode.repeated,
        ),
      ),
      child: child,
    );
  }
  
}
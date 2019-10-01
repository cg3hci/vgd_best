import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  CarouselItem({this.child});

  final child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Center(child: child),
        
      ],
    );
  }
}

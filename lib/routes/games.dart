
import 'package:flutter/material.dart';
import 'package:vgd_best/animations/fadein.dart';
import 'package:vgd_best/widgets/navbar.dart';

class About extends StatelessWidget {
  const About({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      1,
      SizedBox(
        height: 300,
        width: 300,
        child: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}

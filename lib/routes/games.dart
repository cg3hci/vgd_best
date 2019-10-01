import 'package:flutter/material.dart';
import 'package:vgd_best/animations/fadein.dart';
import 'package:vgd_best/widgets/navbar.dart';

class Games extends StatelessWidget {
  const Games({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
        1,
        Column(
          children: <Widget>[
            new GamePlaceholder(),
            new GamePlaceholder(),
            new GamePlaceholder(),
            new GamePlaceholder(),
            new GamePlaceholder(),
          ],
        ));
  }
}

class GamePlaceholder extends StatelessWidget {
  const GamePlaceholder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000, maxHeight: 300),
          child: Container(color: Colors.teal),
        ),
      ),
    );
  }
}

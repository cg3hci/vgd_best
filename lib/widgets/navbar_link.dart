import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vgd_best/state/navigator_provider.dart';

class NavbarLink extends StatelessWidget {
  const NavbarLink(
    this.textString, {
    Key key,
    this.route = "/",
  }) : super(key: key);

  final String route;
  final String textString;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 50, maxWidth: 100),
          child: FittedBox(
            alignment: Alignment.center,
            fit: BoxFit.fitHeight,
            child: GestureDetector(
              onTap: () {
                Provider.of<NavigatorProvider>(context).currentRoute = route;
              },
              child: Text(
                textString,
                style: TextStyle(
                  fontFamily: "Roboto",
                  color: Provider.of<NavigatorProvider>(context).currentRoute == route
                      ? Colors.red
                      : Colors.blue,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

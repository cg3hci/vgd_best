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
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ConstrainedBox(
        
        constraints: BoxConstraints(
          minHeight: 50,
          minWidth: 50,
          maxHeight: 100,
          maxWidth: 150,
        ),
        child: GestureDetector(
          onTap: () {
            Provider.of<NavigatorProvider>(context).currentRoute = route;
          },
          child: 
          Text(
            textString,
            style: TextStyle(
              fontSize: 30,
              fontFamily: "Roboto",
              color: Provider.of<NavigatorProvider>(context).currentRoute ==
                      route
                  ? Colors.red
                  : Colors.blue,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}

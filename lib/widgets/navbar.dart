
import 'package:flutter/material.dart';
import 'package:vgd_best/widgets/navbar_link.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      child: Column(
        children: <Widget>[
          Container(
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(width: 1))),
            child: Flex(
              direction: Axis.horizontal,
              children: <Widget>[
                Expanded(
                  child: Container(),
                  flex: 3,
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      NavbarLink("Home", route: "/Home",),
                      NavbarLink("About", route: "/About"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:vgd_best/widgets/navbar_link.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 100),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              NavbarLink(
                "Home",
                route: "/Home",
              ),
              NavbarLink(
                "Games",
                route: "/Games",
              ),
              NavbarLink(
                "About",
                route: "/About",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

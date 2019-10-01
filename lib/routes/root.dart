import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vgd_best/routes/about.dart';
import 'package:vgd_best/routes/games.dart';
import 'package:vgd_best/routes/home.dart';
import 'package:vgd_best/state/navigator_provider.dart';
import 'package:vgd_best/widgets/navbar.dart';

class Root extends StatelessWidget {
  const Root({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    var route;


    switch (Provider.of<NavigatorProvider>(context).currentRoute) {
      case "/Home":
        route = Home();
        break;
      case "/About":
        route = About();
        break;
      case "/Games":
        route = Games();
        break;
    }
    
    return Material(
      color: Theme.of(context).backgroundColor,
      child: ListView(
        children: <Widget>[
          Navbar(),
          route,
        ],
      ),
    );
  }
}

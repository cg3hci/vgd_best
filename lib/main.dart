import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vgd_best/routes/about.dart';
import 'package:vgd_best/routes/home.dart';
import 'package:vgd_best/routes/root.dart';
import 'package:vgd_best/state/carousel_state_provider.dart';
import 'package:vgd_best/state/navigator_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CarouselState>(
      builder: (context) => CarouselState(),
      child: ChangeNotifierProvider<NavigatorProvider>(
        builder: (context) => NavigatorProvider(),
        child: MaterialApp(
          title: 'VGD Best',
          theme: ThemeData(
            backgroundColor: Colors.black87,
          ),
          home: Root(),
        ),
      ),
    );
  }
}

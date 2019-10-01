import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:vgd_best/animations/fadein.dart';
import 'package:vgd_best/widgets/carousel_games.dart';
import 'package:vgd_best/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeIn(
        1,
        /*
			CarouselSlider(
				height: 400.0,
				items: [1, 2, 3, 4, 5].map((i) {
					return Builder(
						builder: (BuildContext context) {
							return Container(
									width: MediaQuery.of(context).size.width,
									margin: EdgeInsets.symmetric(horizontal: 5.0),
									decoration: BoxDecoration(color: Colors.amber),
									child: Text(
										'text $i',
										style: TextStyle(fontSize: 16.0),
									));
						},
					);
				}).toList(),
			),
			*/
        ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 600),
          child: CarouselWithIndicator(
            items: <Widget>[
              SizedBox(
                  child: Container(color: Colors.yellow),
                  height: 900,
                  width: 1600),
              SizedBox(
                  child: Container(color: Colors.blue),
                  height: 900,
                  width: 1600),
              SizedBox(
                  child: Container(color: Colors.black),
                  height: 900,
                  width: 1600),
              SizedBox(
                  child: Container(color: Colors.red),
                  height: 900,
                  width: 1600),
              SizedBox(
                  child: Container(color: Colors.amber),
                  height: 900,
                  width: 1600),
              SizedBox(
                  child: Container(color: Colors.green),
                  height: 900,
                  width: 1600),
            ],
          ),
        ));
  }
}

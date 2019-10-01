import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vgd_best/state/carousel_state_provider.dart';

class CarouselWithIndicator extends StatelessWidget {
  CarouselWithIndicator({this.items});
  final items;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<CarouselState>(context);
    final slider = CarouselSlider(
      enlargeCenterPage: true,
      items: items,
      viewportFraction: .8,
      pauseAutoPlayOnTouch: Duration(seconds: 2),
      autoPlay: true,
      onPageChanged: (index) {
        provider.current = index;
      },
    );
    provider.slider = slider;
    return Stack(
      fit: StackFit.passthrough,
      children: [
        slider,
        BottomIndicator(items: items, slider: slider, provider: provider),
        LeftArrow(slider: slider),
        RightArrow(slider: slider),
      ],
    );
  }
}

class RightArrow extends StatelessWidget {
  const RightArrow({
    Key key,
    @required this.slider,
  }) : super(key: key);

  final CarouselSlider slider;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      right: 10,
      child: GestureDetector(
        onTap: () {
          slider.nextPage(
              duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
        },
        child: Container(
          width: 44,
          height: 44,
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              border: Border.all(
                width: .7,
                color: Colors.white24,
              ),
              shape: BoxShape.circle,
              color: Color.fromRGBO(120, 120, 120, 0.4)),
          child: Icon(
            Icons.arrow_right,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class LeftArrow extends StatelessWidget {
  const LeftArrow({
    Key key,
    @required this.slider,
  }) : super(key: key);

  final CarouselSlider slider;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      left: 10,
      child: GestureDetector(
        onTap: () {
          slider.previousPage(
              duration: Duration(seconds: 1), curve: Curves.fastOutSlowIn);
        },
        child: Container(
          width: 44,
          height: 44,
          margin: EdgeInsets.all(3),
          decoration: BoxDecoration(
              border: Border.all(
                width: .7,
                color: Colors.white24,
              ),
              shape: BoxShape.circle,
              color: Color.fromRGBO(120, 120, 120, 0.4)),
          child: Icon(
            Icons.arrow_left,
            size: 40,
          ),
        ),
      ),
    );
  }
}

class BottomIndicator extends StatelessWidget {
  const BottomIndicator({
    Key key,
    @required this.items,
    @required this.slider,
    @required this.provider,
  }) : super(key: key);

  final List<Widget> items;
  final CarouselSlider slider;
  final CarouselState provider;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (var index = 0; index < items.length; index++)
            GestureDetector(
              onTap: () {
                slider.animateToPage(index,
                    duration: Duration(seconds: 1),
                    curve: Curves.fastOutSlowIn);
              },
              child: Container(
                width: 13.0,
                height: 13.0,
                margin:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: .7,
                    color: Colors.white24,
                  ),
                  shape: BoxShape.circle,
                  color: provider.current == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(120, 120, 120, 0.4),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

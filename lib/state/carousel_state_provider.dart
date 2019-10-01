import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselState extends ChangeNotifier{

  int _current = 0;
  CarouselSlider slider;

  get current => _current;
  set current (value) {_current = value; notifyListeners();}

}
import 'package:flutter/cupertino.dart';

class NavigatorProvider with ChangeNotifier{
    
  var _currentRoute = "/Home";

  get currentRoute => _currentRoute;

  set currentRoute (value) {
    _currentRoute = value;
    notifyListeners();
  }

}
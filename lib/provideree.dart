import 'package:flutter/material.dart';

class providerrr with ChangeNotifier{
  double valuetake=1.0;
  double get statevalue=>valuetake;
  void getvalue(double val){
    valuetake=val;
    notifyListeners();
  }
}
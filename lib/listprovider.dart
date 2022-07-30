import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

class listprovider with ChangeNotifier
{
  List<int> fav=[];
  List<int> get favs =>fav;
  void addItem(int value){
    fav.add(value);
    notifyListeners();
  }
  void removeitems(int value)
  {
    fav.remove(value);
    notifyListeners();
  }
}
import 'package:flutter/material.dart';
import 'package:untitled6/homepage.dart';
import 'package:provider/provider.dart';
import 'package:untitled6/listingitems.dart';
import 'package:untitled6/provideree.dart';

import 'econdeproviderscreen.dart';
import 'listprovider.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers:[
        ChangeNotifierProvider(create:(_) =>providerrr()),
        ChangeNotifierProvider(create:(_) =>multipleprovider()),
          ChangeNotifierProvider(create:(_) =>listprovider()),
        ],
      child: MaterialApp(

        home: listingitems(),
      ),
    );

  }
}


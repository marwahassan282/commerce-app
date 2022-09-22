import 'package:appcommerce/pages/detailsscreen.dart';
import 'package:appcommerce/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Home.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext context) {
    return Cart();
  },
  child: MyApp()));
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home:HomeScreen()
    );
  }
}


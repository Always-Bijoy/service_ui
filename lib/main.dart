import 'package:flutter/material.dart';
import 'package:flutter_ui/MyHomePage.dart';
import 'package:flutter_ui/bijoy/home/home_screen.dart';
import 'package:flutter_ui/bijoy/home/my_store/product_screen.dart';
import 'package:flutter_ui/mamun/screens/ServiceScreen.dart';
import 'config/SizeConfig.dart';
import 'config/styling.dart';
import 'mamun/screens/add_new_product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              title: 'Flutter Merchant UI',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.lightTheme,
              home: ProductScreen(),
            );
          },
        );
      },
    );
  }
}
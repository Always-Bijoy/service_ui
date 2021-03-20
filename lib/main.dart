import 'package:flutter/material.dart';
import 'bijoy/home/order2_loyal_customer/LoyalCustomer.dart';
import 'config/SizeConfig.dart';
import 'config/styling.dart';

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
              home: LoyalCustomer(),
            );
          },
        );
      },
    );
  }
}
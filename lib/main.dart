import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/HomeMain.dart';
import 'package:flutter_ui/bijoy/home/banner.dart';
import 'package:flutter_ui/bijoy/home/business_hour/BusinessHour.dart';
import 'package:flutter_ui/bijoy/home/chat.dart';
import 'package:flutter_ui/bijoy/home/post_feed/Post_Feed.dart';
import 'package:flutter_ui/bijoy/home/who_can_see_post.dart';
import 'bijoy/home/business_hour_edit/Business_our_edit.dart';
import 'bijoy/home/create_post/CreatePost.dart';
import 'bijoy/home/order2_loyal_customer/LoyalCustomer.dart';
import 'bijoy/home/post_view.dart';
import 'bijoy/home/qr_code_poster/Qr_code_poster.dart';
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
              home: Chat(),
            );
          },
        );
      },
    );
  }
}
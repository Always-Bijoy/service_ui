import 'package:flutter/material.dart';

final shadow = [BoxShadow(
      color: Colors.black12,
      blurRadius: 16.0,
      offset: Offset(4.0,4.0),
      spreadRadius: 2.0
  )];
final outLineBorder = OutlineInputBorder(
  borderSide: BorderSide(
      color: Colors.black, width: 2.0),
);

final categories = ['Food','Book','Cook'];
final names = ['cocacola','dew','amul'];
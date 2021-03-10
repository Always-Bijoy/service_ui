import 'package:flutter/material.dart';

class DeliveredBtn extends StatelessWidget {
  const DeliveredBtn({
    Key key, this.fillColor, this.title, this.txtColor,
  }) : super(key: key);
  final Color fillColor;
  final String title;
  final Color txtColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(
          vertical: 8, horizontal: 18),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF707070),
          ),
          borderRadius: BorderRadius.circular(14),
          color: fillColor
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 18, color: txtColor),
      ),
    );
  }
}
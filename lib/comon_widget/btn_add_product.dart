import 'package:flutter/material.dart';

class btnAddProduct extends StatelessWidget {
  const btnAddProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(14),
        margin: EdgeInsets.all(14),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF5E259E),
            border: Border.all(color: Color(0xFFF7F7F7)),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            '+ Add Service',
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

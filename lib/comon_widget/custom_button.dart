import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key, this.title = 'Update', this.mLeft = 14, this.mRight= 14, this.mBottom= 14, this.mTop= 14,
  }) : super(key: key);

  final String title;
  final double mLeft;
  final double mRight;
  final double mBottom;
  final double mTop;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(14),
        margin: EdgeInsets.only(left: mLeft, right: mRight, top: mTop, bottom: mBottom),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFF5E259E),
            border: Border.all(color: Color(0xFFF7F7F7)),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

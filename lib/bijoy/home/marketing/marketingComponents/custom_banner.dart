import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({
    Key key,
    this.top = 0,
    this.right = 0,
    this.left = 0,
    this.bottom = 0,
    this.title,
    this.icon,
  }) : super(key: key);

  final double top;
  final double right;
  final double left;
  final double bottom;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: top, right: right, bottom: bottom, left: left),
      padding: EdgeInsets.symmetric(vertical: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: Color(0xFFEDEDED)),
          color: Colors.white),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.blueAccent,
            size: 35,
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

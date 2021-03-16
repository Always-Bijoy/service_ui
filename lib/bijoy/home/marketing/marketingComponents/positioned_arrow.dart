import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class PositionedArrow extends StatelessWidget {
  const PositionedArrow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        alignment: Alignment.center,
        height: SizeConfig.heightMultiplier * 5,
        width: SizeConfig.widthMultiplier * 7.5,
        decoration: BoxDecoration(
          color: Color(0xFFF2F2F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomRight: Radius.circular(12),
          ),
        ),
        child: Icon(
          Icons.arrow_forward_ios_sharp,
          size: SizeConfig.heightMultiplier * 2,
          color: Color(0xFF5F259E),
        ),
      ),
    );
  }
}
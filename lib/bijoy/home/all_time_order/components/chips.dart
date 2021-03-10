import 'package:flutter/material.dart';

class chips extends StatelessWidget {
  const chips({
    Key key, this.title, this.textColor, this.fillColor,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 26,vertical: 6),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: Color(0xFF9E9E9E),
              ),
              // color: Color(0xFF5D249A)
              color: fillColor
          ),
          child: Text(title,style: Theme.of(context).textTheme.caption.copyWith(color: textColor),),
        )
      ],
    );
  }
}
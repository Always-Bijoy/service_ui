import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class ChipsButton extends StatelessWidget {
  const ChipsButton({
    Key key,
    this.title,
    this.textColor,
    this.fillColor,
    this.iconData,
    this.iconColor,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final Color fillColor;
  final IconData iconData;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(SizeConfig.widthMultiplier * 7),
          border: Border.all(
            color: Colors.green,
          ),
          // color: Color(0xFF5D249A)
          color: fillColor),
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          SizedBox(
            width: SizeConfig.widthMultiplier,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.caption.copyWith(
                color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

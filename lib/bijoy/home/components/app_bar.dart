import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';
import 'package:flutter_ui/config/styling.dart';

class appBar extends StatelessWidget {
  const appBar({
    Key key,
    @required this.status,
  }) : super(key: key);

  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppTheme.lightCyan),
            child: Row(
              children: [
                Text('Business Open'),
                Switch(
                  value: status,
                  onChanged: (value){
                    // setState(() {
                    //   isSwitched=value;
                    //   print(isSwitched);
                    // });
                  },
                  activeTrackColor: Color(0xFF00D748),
                  activeColor: Colors.white,
                ),
              ],
            ),
          ),
          Spacer(),
          Icon(Icons.search_rounded, size: SizeConfig.heightMultiplier*5,),
          SizedBox(width: SizeConfig.widthMultiplier*4,),
          Icon(Icons.info_outline, size: SizeConfig.heightMultiplier*5)
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OpenList extends StatelessWidget {
  const OpenList({
    Key key,
    this.title,
    this.sTitle,
    this.color,
    this.eTitle,
  }) : super(key: key);

  final String title;
  final String sTitle;
  final String eTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 35,
              color: color,
              child: Text(
                sTitle,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontSize: 10),
                ),
                Text(
                  '12:00 AM-11:59 PM',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(fontSize: 12),
                ),
                Text(eTitle,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(fontSize: 8, color: Colors.red)),
              ],
            ),
          ),
          Spacer(),
          Transform.scale(
            scale: 0.6,
            child: CupertinoSwitch(
              value: true,
              onChanged: (value) {
                // setState(() {
                //   isSwitched=value;
                //   print(isSwitched);
                // });
              },
              trackColor: Colors.grey,
              // activeTrackColor: Color(0xFF00D748),
              activeColor: Color(0xFF00D748),
            ),
          ),
        ],
      ),
    );
  }
}
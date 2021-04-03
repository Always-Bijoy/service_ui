import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class PostFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 12),
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.heightMultiplier * 3, horizontal: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFFE8EBF1).withOpacity(0.5),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_rounded,
                    color: Color(0xFFB6B6B6),
                  ),
                  Text(
                    'Post Feed',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: SizeConfig.heightMultiplier * 3),
                  ),
                  FlatButton(
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.info_outline,
                      color: Colors.black,
                    ),
                    shape: CircleBorder(
                        side: BorderSide(color: Colors.transparent)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                        vertical: SizeConfig.widthMultiplier * 3,
                        horizontal: SizeConfig.widthMultiplier * 4),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.grid_view,
                              color: Color(0xFFB6B6B6),
                            ),
                            Spacer(),
                            chipText(
                              text: 'Publish',
                              color: Color(0xFF00D748),
                            ),
                            SizedBox(
                              width: SizeConfig.widthMultiplier * 8,
                            ),
                            chipText(
                              text: 'Draft',
                              color: Color(0xFFA8A8A8),
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          margin: EdgeInsets.symmetric(vertical: 18),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFE8EBF1).withOpacity(0.5),
                                  spreadRadius: 7,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 12),
                                    alignment: Alignment.center,
                                    height: 45,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF5F259E)),
                                    child: Text(
                                      'rh',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Michel Watson',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(
                                                  fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          '5 Min ago - Audugodi, Bengaluru',
                                          maxLines: 1,
                                        ),
                                      ],
                                    ),
                                  ),
                                  RotatedBox(
                                    quarterTurns: 1,
                                    child: Icon(
                                      Icons.more_horiz,
                                      color: Color(0xFFA8A8A8),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 2),
                              Text(
                                'Lorem Ipsum',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in',
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle2
                                    .copyWith(color: Color(0xFF5B5959)),
                              ),
                              Row(
                                children: [
                                  middleChipText(
                                      context: context,
                                      bgColor: Color(0xFFFEEEF2),
                                      tColor: Color(0xFFF98BA5),
                                      text: '#General'),
                                  middleChipText(
                                      context: context,
                                      bgColor: Color(0xFFEEEEFE),
                                      tColor: Color(0xFF5458F7),
                                      text: '#Exhibition'),
                                ],
                              ),
                              SizedBox(height: SizeConfig.heightMultiplier * 4),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(
                                    'https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/02/benefitsCardioEx-1154361357-770x553-1-650x428.jpg'),
                              ),
                              Row(
                                children: [
                                  bottomChips(
                                      title: '100k',
                                      iconData: Icons.favorite,
                                      iconColor: Colors.red),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  bottomChips(
                                      title: '1.M',
                                      iconData: Icons.remove_red_eye,
                                      iconColor: Color(0xFF5F259E)),
                                  Spacer(),
                                  bottomChips(
                                      title: '100k',
                                      iconData: Icons.share_outlined,
                                      iconColor: Color(0xFF777676))
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.all(14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF5E259E),
                    border: Border.all(color: Color(0xFFF7F7F7)),
                    borderRadius: BorderRadius.circular(16)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.edit, color: Colors.white,size: 16,),
                    SizedBox(width: 6,),
                    Text(
                      'Post New',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container bottomChips({IconData iconData, Color iconColor, String title}) {
    return Container(
      margin: EdgeInsets.only(top: 12),
      child: Row(
        children: [
          Icon(
            iconData,
            color: iconColor,
          ),
          SizedBox(width: SizeConfig.widthMultiplier),
          Text(title)
        ],
      ),
    );
  }

  Container middleChipText(
      {BuildContext context, Color bgColor, Color tColor, String text}) {
    return Container(
      margin: EdgeInsets.only(right: 12, top: 8),
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.widthMultiplier,
          horizontal: SizeConfig.heightMultiplier),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: Theme.of(context)
            .textTheme
            .caption
            .copyWith(color: tColor, fontWeight: FontWeight.w500),
      ),
    );
  }

  Container chipText({String text, Color color}) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: SizeConfig.widthMultiplier - 2,
          horizontal: SizeConfig.heightMultiplier + 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

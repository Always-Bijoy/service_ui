import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';
import 'package:flutter_ui/config/styling.dart';

import 'components/app_bar.dart';

class Home extends StatelessWidget {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              appBar(status: status),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6),
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: SizeConfig.heightMultiplier * 7,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0)),
                  color: AppTheme.persianGreen,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'View store as Customer',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: SizeConfig.heightMultiplier * 18,
                      width: SizeConfig.heightMultiplier * 18,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppTheme.persianGreen,
                      ),
                      child: Text(
                        'rm',
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              color: Colors.white,
                            ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mr. Ramesh Kumar',
                              style: Theme.of(context).textTheme.headline5),
                          Text(
                            'Carpenter',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: Color(0xFF848484)),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '35k',
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_outlined,
                                          size: 15,
                                          color: Color(0xFF848484),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Visitors',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(
                                                  color: Color(0xFF848484)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 6),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('1278',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.shopping_cart_outlined,
                                          size: 15,
                                          color: Color(0xFF848484),
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          'Total Orders',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .copyWith(
                                                  color: Color(0xFF848484)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 16),
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'www.shopkaro.in/rameshcp',
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Icon(
                              Icons.message,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: Icon(Icons.more_horiz),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 2,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 25),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.bar_chart_outlined,
                      color: Colors.green,
                      size: 25,
                    ),
                    SizedBox(
                      width: SizeConfig.heightMultiplier,
                    ),
                    Text(
                      'Service OverView',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          .copyWith(fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      padding: EdgeInsets.only(
                          left: 16, top: 22, right: 16, bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('07',style: Theme.of(context).textTheme.caption.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w500),),
                          Row(
                            children: [
                              Text('Total Service',style: Theme.of(context).textTheme.caption),
                              Spacer(),
                              Icon(Icons.calendar_today_outlined, color: Colors.blue,
                                  size: 20)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      padding: EdgeInsets.only(
                          left: 16, top: 22, right: 16, bottom: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '07',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Text('Marketing posts',
                                  style: Theme.of(context).textTheme.caption),
                              Spacer(),
                              Icon(
                                Icons.campaign_outlined,
                                color: Colors.blue,
                                size: 20,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.white
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Timing Setup', style: Theme.of(context).textTheme.caption),
                        Text('Tab to see your business timing', style: TextStyle(fontSize: 14),),
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_down, size: 30,)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.all(14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF5E259E),
                    border: Border.all(color: Color(0xFFF7F7F7)),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                      '+ Add Service',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

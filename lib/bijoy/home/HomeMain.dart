import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/components/app_bar.dart';
import 'package:flutter_ui/comon_widget/btn_add_product.dart';
import 'package:flutter_ui/config/SizeConfig.dart';
import 'package:flutter_ui/config/styling.dart';

class HomeMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool status = true;
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
                  color: Color(0xFF382151),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's Earning",
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$ 5478.00',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                          size: 35,
                        ),
                      ],
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
                        'rh',
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
                          Container(
                            child: Text('Rahil Store',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            'Grocery Store',
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
                          Text(
                            '4377',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text('Total Service',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 16)),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.calendar_today_outlined,
                                color: Colors.blue, size: 20),
                          ),
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
                            '\$ 1730.99',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text('Revenue',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 16)),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.monetization_on_outlined,
                                color: Colors.blue, size: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier,
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
                          Text(
                            '589',
                            style: Theme.of(context).textTheme.caption.copyWith(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text('Marketing posts',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 16)),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.campaign_outlined,
                                color: Colors.blue, size: 20),
                          ),
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
                          Row(
                            children: [
                              Text(
                                '05',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 6),
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFF00D748)),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Today's Orders",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(fontSize: 16),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Icon(Icons.monetization_on_outlined,
                                color: Colors.blue, size: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              btnAddProduct(),
            ],
          ),
        ),
      ),
    );
  }
}

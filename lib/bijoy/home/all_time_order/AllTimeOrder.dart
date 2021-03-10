import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/all_time_order/components/chips.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

import 'components/deliveredBtn.dart';

class AllTimeOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.assignment),
            SizedBox(
              width: 10,
            ),
            Text(
              'All Time Order',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(16),
                child: Row(
                  children: [
                    chips(
                      title: 'All',
                      textColor: Colors.white,
                      fillColor: Color(0xFF5D249A),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 4,
                    ),
                    chips(
                      title: 'Pending',
                      textColor: Color(0xFF9E9E9E),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 4,
                    ),
                    chips(
                      title: 'Accepted',
                      textColor: Color(0xFF9E9E9E),
                      // fillColor: Color(0xFF5D249A),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFF7F7F7),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://www.indoasiangroceries.com.au/wp-content/uploads/2018/03/lijjat-papad-udad-jeera-cumin-papad-200-gm.jpg',
                            width: 70,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order Id #646367',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(fontSize: 18),
                                      ),
                                      Text('1 item',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "\$ 55",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                      ),
                                      Text('06/01/2022, 10:00 PM',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DeliveredBtn(
                          title: 'Not delivered',
                        ),
                        SizedBox(width: 15,),
                        DeliveredBtn(
                          title: 'Delivered',
                          fillColor: Color(0xFF000000),
                          txtColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFF7F7F7),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://www.indoasiangroceries.com.au/wp-content/uploads/2018/03/lijjat-papad-udad-jeera-cumin-papad-200-gm.jpg',
                            width: 70,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order Id #646367',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(fontSize: 18),
                                      ),
                                      Text('1 item',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "\$ 55",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text('06/01/2022, 10:00 PM',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DeliveredBtn(
                          title: 'Not delivered',
                        ),
                        SizedBox(width: 15,),
                        DeliveredBtn(
                          title: 'Delivered',
                          fillColor: Color(0xFF000000),
                          txtColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12, left: 12, right: 12),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Color(0xFFF7F7F7),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://www.indoasiangroceries.com.au/wp-content/uploads/2018/03/lijjat-papad-udad-jeera-cumin-papad-200-gm.jpg',
                            width: 70,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Order Id #646367',
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(fontSize: 18),
                                      ),
                                      Text('1 item',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        "\$ 55",
                                        style: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text('06/01/2022, 10:00 PM',
                                          style: Theme.of(context)
                                              .textTheme
                                              .caption),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        DeliveredBtn(
                          title: 'Not delivered',
                        ),
                        SizedBox(width: 15,),
                        DeliveredBtn(
                          title: 'Delivered',
                          fillColor: Color(0xFF000000),
                          txtColor: Colors.white,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

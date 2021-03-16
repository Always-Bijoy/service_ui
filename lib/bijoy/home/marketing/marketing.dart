import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/marketing/marketingComponents/custom_banner.dart';
import 'package:flutter_ui/bijoy/home/marketing/marketingComponents/positioned_arrow.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class Marketing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Marketing',
            style: Theme.of(context).textTheme.caption.copyWith(fontSize: 18),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.heightMultiplier * 4),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFFEDEDED),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.network(
                              'https://cdn.business2community.com/wp-content/uploads/2020/03/iStock-929787554.jpg',
                              height: SizeConfig.heightMultiplier * 20),
                          SizedBox(
                            height: SizeConfig.heightMultiplier,
                          ),
                          Text(
                            'Customer Engagement',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    PositionedArrow()
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomBanner(
                        right: 16.0,
                        top: 16.0,
                        title: 'Banner',
                        icon: Icons.filter_b_and_w,
                      ),
                    ),
                    Expanded(
                      child: CustomBanner(
                        left: 16.0,
                        top: 16.0,
                        title: 'Get QR Code',
                        icon: Icons.qr_code_sharp,
                      ),
                    ),
                  ],
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            top: 16, bottom: 16, left: 32, right: 18),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.clean_hands_sharp,
                              size: 25,
                              color: Colors.blue,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: SizeConfig.widthMultiplier * 3),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'My Loyal Customer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .caption
                                          .copyWith(
                                              fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'You have total 4 loyal Customer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2.copyWith(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      PositionedArrow(),
                    ],
                  ),
                ),
                Container(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

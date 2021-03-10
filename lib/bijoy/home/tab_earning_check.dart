import 'package:flutter/material.dart';

import 'components/app_bar.dart';

class TabEarningCheck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool status = true;
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appBar(status: status),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 6),
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(12.0)),
                  color: Color(0xFF382151),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    tabEarning(amount: "\$ 5478.00",title: "Today's", context: context),
                    SizedBox(width: 10,),
                    tabEarning(amount: "\$ 5478.00",title: "Yesterday", context: context),
                    SizedBox(width: 10,),
                    tabEarning(amount: "\$ 5478.00",title: "This Week", context: context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded tabEarning({String amount, String title, BuildContext context}) {
    return Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(amount, style: Theme.of(context).textTheme.caption.copyWith(
                            fontSize: 18
                          ),),
                          Text(title),
                        ],
                      ),
                    ),
                  );
  }
}

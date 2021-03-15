import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/comon_widget/custom_button.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        title: Center(
          child: Text(
            'Payment',
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 42, vertical: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipOval(
                        child: Image.network(
                          'https://www.searchpng.com/wp-content/uploads/2019/02/Google-Pay-Logo-Icon-PNG-715x714.png',
                          height: 60,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            text:
                                'Accept payment via Gpay on your store. As our customer, you are entitled to ',
                            style: Theme.of(context).textTheme.bodyText2,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'special transaction rate>',
                                  style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, bottom: 10),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF00D748)),
                    child: Text(
                      'Enable',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 26),
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cash on Delivery',
                        style: Theme.of(context).textTheme.caption,
                      ),
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
                  Divider(
                    color: Colors.green,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Offline Payment',
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Transform.scale(
                        scale: 0.6,
                        child: CupertinoSwitch(
                          value: false,
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
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              title: 'UPDATE',
            )
          ],
        ),
      ),
    );
  }
}

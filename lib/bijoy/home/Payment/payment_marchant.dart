import 'package:flutter/material.dart';
import 'package:flutter_ui/comon_widget/custom_button.dart';

class PaymentMerchant extends StatelessWidget {
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
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 42, vertical: 28),
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
                                child: Text('Please contact your Gpay account manager to obtain yout security credentials and input them below.'),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16, top: 32),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              hintText:'Merchant ID',
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText:'Merchant Key',
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText:'Merchant Website',
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText:'Industry Type ID',
                              hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF171717),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(title: 'SAVE',)
          ],
        ),
      ),
    );
  }
}

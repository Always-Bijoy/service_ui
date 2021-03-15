import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/comon_widget/btn_add_product.dart';
import 'package:flutter_ui/comon_widget/custom_button.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class AddressSet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeConfig.heightMultiplier * 40,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Address',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    Text(
                      '12, Adugodi Main Rd, Ak Colony, Adugodi, Bengaluru, Karnataka 560030',
                      style: Theme.of(context).textTheme.bodyText2,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Full Address',
                        labelStyle: TextStyle(
                          color: Colors.black54,fontSize: 14
                        ),
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
                        labelText: 'State',
                        labelStyle: TextStyle(
                          color: Colors.black54,fontSize: 14
                        ),
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
                        labelText: 'District',
                        labelStyle: TextStyle(
                          color: Colors.black54,fontSize: 14
                        ),
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
                        labelText: 'Pin Code',
                        labelStyle: TextStyle(
                          color: Colors.black54,fontSize: 14
                        ),
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
                    CustomButton(mLeft: 0,mRight: 0,mTop: 18,),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/my_products_new/chips_button.dart';
import 'package:flutter_ui/bijoy/home/my_products_new/my_product_banner.dart';
import 'package:flutter_ui/bijoy/home/my_products_new/product_list.dart';
import 'package:flutter_ui/config/SizeConfig.dart';
import 'package:flutter_ui/config/styling.dart';

class MyProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool status = true;
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'My Products',
          style: TextStyle(color: Colors.black),
        )),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Color(0xFFB6B6B6),
        ),
        actions: <Widget>[
          TextButton(
            // textColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                      // color: Colors.grey,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        padding: EdgeInsets.only(left: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.search_rounded,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          color: Colors.white,
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xFFFAFAFA)),
                                child: Icon(
                                  Icons.edit,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "Atta, Flours and Rice",
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                              ),
                              Spacer(),
                              Icon(
                                Icons.keyboard_arrow_up_outlined,
                                size: 25,
                              )
                            ],
                          ),
                        ),
                        ItemList(
                          status: status,
                          productImage:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxur5rNDbIEvRSdcyAEoYEZoxQB34RvB4Fhg&usqp=CAU',
                          title: 'Indeia Gate Brown Rice (1 Kg)',
                          price: "140",
                          available: "(in-stock)",
                        ),
                        ItemList(
                          status: status,
                          productImage:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdfVmTKhJLXjlqMAJ8DRjM7KGzRydSinEyWg&usqp=CAU',
                          title: 'India Gate Dubal Basmati Rice (1 Kg)',
                          price: "115",
                          available: "(in-stock)",
                        )
                      ],
                    ),
                    MyProductBanner()
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  Expanded(
                    child: ChipsButton(
                      title: 'Share Shop',
                      textColor: Colors.green,
                      iconData: Icons.share_outlined,
                      iconColor: Colors.green,
                    ),
                  ),
                  SizedBox(width: SizeConfig.widthMultiplier *2,),
                  Expanded(
                    child: ChipsButton(
                      title: 'Add Product',
                      textColor: Colors.white,
                      fillColor: Colors.green,
                      iconData: Icons.add_circle,
                      iconColor: Colors.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:math' as math;
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  String dummyText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text('My Service', style: TextStyle(color: Colors.black),)),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Color(0xFFB6B6B6),
        ),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Icon(Icons.search,color: Colors.black,),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              padding: EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10.0),
                    bottomLeft: Radius.circular(10.0)),
                color: Color(0xFF00AAA7),
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
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Service',
                        style: TextStyle(color: Color(0xFF582E89),fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Categories',
                        style: TextStyle(color: Color(0xFFB6B6B6),fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Divider(
                          color: Color(0xFF00AAA7),
                          thickness: 2,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Divider(
                          color: Color(0xFFB6B6B6),
                          thickness: 1,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(6),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFF7F7F7)),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description 01',
                    style: TextStyle(color: Color(0xFF414141), fontSize: 18,),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dummyText,
                    style: TextStyle(
                      color: Color(0xFFB6B6B6),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 8, right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Text(
                            'Remove',
                            style: TextStyle(
                                color: Color(0xFFB6B6B6), fontSize: 12),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 16, right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Color(0xFFB6B6B6), fontSize: 12),
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 14,
                              ),
                              SizedBox(width: 4,),
                              Text(
                                'Share',
                                style: TextStyle(
                                    color: Color(0xFFB6B6B6), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(6),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFF7F7F7)),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description 02',
                    style: TextStyle(color: Color(0xFF414141), fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dummyText,
                    style: TextStyle(
                      color: Color(0xFFB6B6B6),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 8, right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Text(
                            'Remove',
                            style: TextStyle(
                                color: Color(0xFFB6B6B6), fontSize: 12),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 16, right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Color(0xFFB6B6B6), fontSize: 12),
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 14,
                              ),
                              SizedBox(width: 4,),
                              Text(
                                'Share',
                                style: TextStyle(
                                    color: Color(0xFFB6B6B6), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(6),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0xFFF7F7F7)),
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description 03',
                    style: TextStyle(color: Color(0xFF414141), fontSize: 18),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    dummyText,
                    style: TextStyle(
                      color: Color(0xFFB6B6B6),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 8, right: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Text(
                            'Remove',
                            style: TextStyle(
                                color: Color(0xFFB6B6B6), fontSize: 12),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 16, right: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Text(
                            'Edit',
                            style: TextStyle(
                                color: Color(0xFFB6B6B6), fontSize: 12),
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(
                              top: 4, bottom: 4, left: 10, right: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: Color(0xFFB6B6B6),
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.share,
                                color: Colors.black,
                                size: 14,
                              ),
                              SizedBox(width: 4,),
                              Text(
                                'Share',
                                style: TextStyle(
                                    color: Color(0xFFB6B6B6), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
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
              child: Center(child: Text('+ Add Service', style: TextStyle(color: Colors.white),)),
            )

          ],
        ),
      ),
    );
  }
}

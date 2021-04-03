import 'package:flutter/material.dart';
import 'package:flutter_ui/comon_widget/btn_add_product.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Create Post',
                        style: Theme.of(context).textTheme.caption.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: SizeConfig.heightMultiplier * 3),
                      ),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFFFFEAEA),
                        ),
                        child: Icon(
                          Icons.close,
                          color: Color(0xFFFE3131),
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 4),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xFFF5F6FA)),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Post Title',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      )),
                  SizedBox(height: SizeConfig.heightMultiplier * 3),
                  Container(
                    height: SizeConfig.heightMultiplier * 18,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFF5F6FA)),
                    child: TextField(
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Tell us more',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 4, top: 11, right: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.widthMultiplier,
                          horizontal: SizeConfig.heightMultiplier + 4),
                      decoration: BoxDecoration(
                        color: Color(0xFF5E259E),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.public,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Public',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 3),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xFFF5F6FA)),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: '#Tag',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.heightMultiplier * 3),
                  Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color(0xFFF5F6FA),
                          ),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSRxM8DF4buqMq2tpVhwcrI7KQpc3zvcMHTQ&usqp=CAU',
                            ),
                          ),
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          children: [
                            Positioned(
                              top: -10,
                              right: -10,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFFFEAEA),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 14,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xFFFE3131),
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: SizeConfig.widthMultiplier * 3),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            width: 1,
                            style: BorderStyle.solid,
                            color: Color(0xFFD0D0D2),
                          ),
                          /*image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSRxM8DF4buqMq2tpVhwcrI7KQpc3zvcMHTQ&usqp=CAU',
                        ),
                      ),*/
                        ),
                        child: Stack(
                          overflow: Overflow.visible,
                          alignment: Alignment.bottomRight,
                          children: [
                            /*Positioned(
                              top: -10,
                              right: -10,
                              child: Container(
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFFFEAEA),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 14,
                                      offset: Offset(
                                          0, 2), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.close,
                                  color: Color(0xFFFE3131),
                                  size: 12,
                                ),
                              ),
                            ),*/
                            Align(
                              alignment: Alignment.center,
                              child: Wrap(
                                children: [
                                  Center(child: Text('+Add Images',textAlign: TextAlign.center,)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
              Container(
                padding: EdgeInsets.all(14),
                margin: EdgeInsets.all(14),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF5E259E),
                    border: Border.all(color: Color(0xFFF7F7F7)),
                    borderRadius: BorderRadius.circular(16)),
                child: Center(
                  child: Text(
                    'Publish',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

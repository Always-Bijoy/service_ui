import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';
import 'package:flutter_ui/config/styling.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bool status = true;
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'My Store',
          style: TextStyle(color: Colors.black),
        )),
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Color(0xFFB6B6B6),
        ),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text('+Add'),
        backgroundColor: Color(0xFF5F259E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      body: SafeArea(
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
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 6),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Product',
                          style: TextStyle(color: Color(0xFFB6B6B6)),
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Text(
                          'Categories',
                          style: TextStyle(color: Color(0xFF582E89)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Color(0xFFB6B6B6),
                            thickness: 2,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Divider(
                            color: Color(0xFF582E89),
                            thickness: 2,
                          ),
                        ),
                        Expanded(
                          flex: 3,
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
                margin: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Grocery',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 18),
                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 6, right: 6, top: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF4F4F4),
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDADADA),
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://www.indoasiangroceries.com.au/wp-content/uploads/2018/03/lijjat-papad-udad-jeera-cumin-papad-200-gm.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lajjat Papad',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('1 item'),
                                Spacer(),
                                Container(
                                  height: 20,
                                  child: Switch(
                                    value: status,
                                    onChanged: (value) {
                                      // setState(() {
                                      //   isSwitched=value;
                                      //   print(isSwitched);
                                      // });
                                    },
                                    activeTrackColor: Color(0xFF00D748),
                                    activeColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$ 55",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Color(0xFF17DB59),
                                          fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "\$ 89",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
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
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
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
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Color(0xFFB6B6B6),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 6, right: 6, top: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF4F4F4),
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDADADA),
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://www.indoasiangroceries.com.au/wp-content/uploads/2018/03/lijjat-papad-udad-jeera-cumin-papad-200-gm.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lajjat Papad',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('1 item'),
                                Spacer(),
                                Container(
                                  height: 20,
                                  child: Switch(
                                    value: status,
                                    onChanged: (value) {
                                      // setState(() {
                                      //   isSwitched=value;
                                      //   print(isSwitched);
                                      // });
                                    },
                                    activeTrackColor: Color(0xFF00D748),
                                    activeColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$ 55",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Color(0xFF17DB59),
                                          fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "\$ 89",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
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
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
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
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Color(0xFFB6B6B6),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Vegetable',
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(fontSize: 18),
                    ),
                    Icon(Icons.edit)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(left: 6, right: 6, top: 16),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFF4F4F4),
                    ),
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.white),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 70,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFDADADA),
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://www.indoasiangroceries.com.au/wp-content/uploads/2018/03/lijjat-papad-udad-jeera-cumin-papad-200-gm.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lajjat Papad',
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('1 item'),
                                Spacer(),
                                Container(
                                  height: 20,
                                  child: Switch(
                                    value: status,
                                    onChanged: (value) {
                                      // setState(() {
                                      //   isSwitched=value;
                                      //   print(isSwitched);
                                      // });
                                    },
                                    activeTrackColor: Color(0xFF00D748),
                                    activeColor: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "\$ 55",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          color: Color(0xFF17DB59),
                                          fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "\$ 89",
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(
                                      top: 4, bottom: 4, left: 8, right: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
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
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
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
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.share,
                                        color: Colors.black,
                                        size: 14,
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Text(
                                        'Share',
                                        style: TextStyle(
                                            color: Color(0xFFB6B6B6),
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
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
    );
  }
}

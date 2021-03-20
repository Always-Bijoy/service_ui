import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoyalCustomer extends StatefulWidget {
  @override
  _LoyalCustomerState createState() => _LoyalCustomerState();
}

class _LoyalCustomerState extends State<LoyalCustomer> {
  bool _value = false;
  var moviesTitles = [
    'Name 01',
    'Name 01',
    'Name 01',
    'Name 01',
    'Name 01',
    'Name 01',
    'Name 01',
    'Name 01'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(
          0xFF00D748,
        ),
        child: Icon(Icons.check),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
          'Loyal Customer',
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
      body: Column(
        children: [
          Column(
            children: moviesTitles
                .map((e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          _value = !_value;
                        });
                      },
                      child: ListTile(
                        title: Text(e.characters.string),
                        leading: ClipOval(
                          child: Image.network(
                            'https://sdpsjagadhri.com/achievement/photo-11/photo_id_111535531825.png',
                            height: 40,
                          ),
                        ),
                        trailing: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(color: Colors.black12)),
                          child: _value
                              ? Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color(0xFF00D748),
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.check,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                )
                              : Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.check_box_outline_blank,
                                    size: 18,
                                    color: Colors.white,
                                  ),
                                ),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
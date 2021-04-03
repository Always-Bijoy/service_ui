import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class QrCodePoster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
            child: Text(
              'Qr Code Poster',
              style: TextStyle(color: Colors.black, fontSize: 18),
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
              Icons.query_builder_sharp,
              color: Colors.black,
            ),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Color(0xFF03AC9E),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(18),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Text(
                                'Scan this QR Code',
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(
                                    fontWeight: FontWeight.w600, color: Color(0xFF5D249A),),
                              ),
                              Wrap(
                                children: [
                                  Text(
                                    'by scanning this QR code you will find this shop Online',
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.caption.copyWith(color: Colors.blueGrey),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 4,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Icon(
                            Icons.qr_code_scanner,
                            size: 150,
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.heightMultiplier * 4,
                        ),
                        Text(
                          'Powered by Pakka Local',
                          style: Theme
                              .of(context)
                              .textTheme
                              .subtitle2
                              .copyWith(color: Colors.white60),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.grey)),
                  child: Row(
                    children: [
                      Text(
                        'Save',
                        style: TextStyle(
                          color: Color(0xFF5D249A),
                        ),
                      ),
                      Icon(
                        Icons.file_download,
                        size: 15,
                        color: Color(0xFF5D249A),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  decoration: BoxDecoration(
                      color: Color(0xFF5D249A),
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color(0xFF5D249A),
                      )),
                  child: Row(
                    children: [
                      Text(
                        'Share',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Icon(
                        Icons.share,
                        size: 15,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.more_horiz,
                      size: 14,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Banner31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Banner',
            style: Theme.of(context).textTheme.caption.copyWith(fontSize: 16),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZ57hF8K608IARt55v6CVpuojI2xsPRgG1_A&usqp=CAU',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 36, vertical: 4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: Color(0xFF5D249A),
                      )),
                  child: Text(
                    'Exit',
                    style: TextStyle(
                      color: Color(0xFF5D249A),
                    ),
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
                  padding: EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Icon(Icons.more_horiz, size: 14,),
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

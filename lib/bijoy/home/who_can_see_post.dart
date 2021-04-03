import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class WhoCanSeePost extends StatelessWidget {
  final bool _value = false;
  final bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Who can see post',
                style: Theme.of(context).textTheme.caption.copyWith(
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.heightMultiplier * 3),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.public),
                    SizedBox(width: 2,),
                    Text('Public', style: Theme.of(context).textTheme.caption.copyWith(fontSize: 16),),
                    Spacer(),
                    Container(
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
                  ],
                ),
              ),
              SizedBox(height: SizeConfig.heightMultiplier * 4),
              Divider(height: 1,color: Colors.grey,),
              SizedBox(height: SizeConfig.heightMultiplier * 4),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.recommend),
                    SizedBox(width: 2,),
                    Text('Loyal Customer', style: Theme.of(context).textTheme.caption.copyWith(fontSize: 16),),
                    Spacer(),
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.black12)),
                      child: value
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

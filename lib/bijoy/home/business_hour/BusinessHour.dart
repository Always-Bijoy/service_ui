import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/business_hour/open_list.dart';
import 'package:flutter_ui/comon_widget/custom_button.dart';

class BusinessHour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Business Hour',
            style: Theme.of(context)
                .textTheme
                .caption
                .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 35,
                        color: Colors.red,
                        child: Text(
                          'S',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sunday',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontSize: 10),
                          ),
                          Text('Closed',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption
                                  .copyWith(fontSize: 12, color: Colors.red)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Transform.scale(
                      scale: 0.6,
                      child: CupertinoSwitch(
                        value: false,
                        onChanged: (value) {
                          // setState(() {
                          //   isSwitched=value;
                          //   print(isSwitched);
                          // });
                        },
                        trackColor: Colors.grey,
                        // activeTrackColor: Color(0xFF00D748),
                        activeColor: Color(0xFF00D748),
                      ),
                    ),
                  ],
                ),
              ),
              OpenList(
                color: Color(0xFFFFC65D),
                title: 'Monday',
                sTitle: 'M',
                eTitle: 'Edit',
              ),
              OpenList(
                color: Color(0xFF7BC8A4),
                title: 'Tuesday',
                sTitle: 'T',
                eTitle: 'Edit',
              ),
              OpenList(
                color: Color(0xFF4CC3D9),
                title: 'Wednesday',
                sTitle: 'W',
                eTitle: 'Edit',
              ),
              OpenList(
                color: Color(0xFF93648D),
                title: 'Thursday',
                sTitle: 'T',
                eTitle: 'Edit',
              ),
              OpenList(
                color: Color(0xFFD88650),
                title: 'Friday',
                sTitle: 'F',
                eTitle: 'Edit',
              ),
              OpenList(
                  color: Color(0xFF4E79C4),
                  title: 'Saturday',
                  sTitle: 'S',
                  eTitle: 'Edit'),
              CustomButton(title: 'SAVE')
            ],
          ),
        ),
      ),
    );
  }
}

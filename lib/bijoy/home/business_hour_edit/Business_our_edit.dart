import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/bijoy/home/business_hour/open_list.dart';
import 'package:flutter_ui/comon_widget/custom_button.dart';

class BusinessHourEdit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
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
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 25),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OpenList(
                    color: Color(0xFFFFC65D),
                    title: 'Monday',
                    sTitle: 'M',
                    eTitle: 'Edit',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Opening Time',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(fontSize: 10),
                              ),
                              Text('12:00 AM',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 12)),
                              Text(
                                'Edit',
                                style: Theme.of(context)
                                    .textTheme
                                    .caption
                                    .copyWith(fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                        Text('TO'),
                        Expanded(
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Closing Time',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2
                                      .copyWith(fontSize: 10),
                                ),
                                Text('12:00 AM',
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption
                                        .copyWith(fontSize: 12)),
                                Text(
                                  'Edit',
                                  style: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .copyWith(fontSize: 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(22),
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF707070)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('12', style: Theme.of(context).textTheme.caption),
                        Text(':', style: Theme.of(context).textTheme.caption),
                        Text('00', style: Theme.of(context).textTheme.caption),
                        Text('AM',
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                .copyWith(color: Colors.grey)),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 28),
                    child: Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'CANCEL',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontSize: 18),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'UPDATE',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2
                              .copyWith(fontSize: 18, color: Colors.red),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            CustomButton(
              title: 'Update',
            )
          ],
        ),
      ),
    );
  }
}

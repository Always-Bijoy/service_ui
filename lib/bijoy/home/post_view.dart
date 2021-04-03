import 'package:flutter/material.dart';

class PostView extends StatelessWidget {
  final moviesTitles = [
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
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16),
                      color: Colors.blue,
                      child: Text(
                        'Vieweid by 44',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16),
                      color: Colors.grey,
                      child: Text(
                        'Not Seen 04',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: moviesTitles
                  .map((e) => GestureDetector(
                onTap: () {
                  /*setState(() {
                    _value = !_value;
                  });*/
                },
                child: ListTile(
                  title: Text(e.characters.string),
                  leading: ClipOval(
                    child: Image.network(
                      'https://sdpsjagadhri.com/achievement/photo-11/photo_id_111535531825.png',
                      height: 40,
                    ),
                  ),
                  subtitle: Text('Today, 9:13', style:
                    Theme.of(context).textTheme.subtitle2,),
                ),
              ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}

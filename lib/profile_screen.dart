import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    var data = [
      {'name': 'Privacy', 'icon': Icons.privacy_tip_outlined},
      {'name': 'Purchase History', 'icon': Icons.history},
      {'name': 'Help & Support', 'icon': Icons.help_outline},
      {'name': 'Settings', 'icon': Icons.settings},
      {'name': 'Invite a Friend', 'icon': Icons.face_retouching_natural},
      {'name': 'Logout', 'icon': Icons.logout},
    ];
    return Scaffold(
      backgroundColor: Color(0xFFededed),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Text('hello')
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage('assets/images/avatar2.png'))),
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 4,
                      right: 0,
                      child: Container(
                        height: 30.0,
                        width: 30.0,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          color: Colors.black,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Nicolas Adam',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '01700000000',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                padding: EdgeInsets.symmetric(vertical: 6),
                width: 140,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(18)),
                child: Text(
                  'Points',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(left: 6),
                      margin: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Colors.white,
                      ),
                      child: ListTile(
                        leading: Icon(
                          data[index]['icon'],
                          color: Colors.red,
                        ),
                        title: Text(data[index]['name']),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.black,
                          size: 18,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Marketing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marketing'),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  child: Column(
                    children: [
                      // Image.network(
                      //   ''
                      // )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

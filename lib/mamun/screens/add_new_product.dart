import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config/SizeConfig.dart';
import '../../config/common.dart';

class AddNewProductPage extends StatefulWidget {
  @override
  _AddNewProductPageState createState() => _AddNewProductPageState();
}

class _AddNewProductPageState extends State<AddNewProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.widthMultiplier * 20.0,
                    ),
                    Text(
                      'Add New Product',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontSize: 16.0),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  height: 120.0,
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: shadow,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.black87,
                        size: 50.0,
                      ),
                      SizedBox(
                        width: SizeConfig.heightMultiplier * 5.0,
                      ),
                      Text(
                        'Add photo up to 4',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.0,),
                categoryDropdown(hints: 'Select Category',data: categories,context: context),
                SizedBox(height: 16.0,),
                categoryDropdown(hints: 'Select Item',data: names,context: context,initialValue: names.elementAt(0)),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Description",
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      border: outLineBorder,
                      focusedBorder: outLineBorder,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Display Price (MRP)",
                      suffixIcon: Icon(CupertinoIcons.question_circle),
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      border: outLineBorder,
                      focusedBorder: outLineBorder,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: null,
                      visualDensity: VisualDensity.compact,
                    ),
                    Text('Selling Price is same'),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Selling price",
                      suffixIcon: Icon(CupertinoIcons.question_circle),
                      hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                      border: outLineBorder,
                      focusedBorder: outLineBorder,
                    ),
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                  child: FlatButton(
                    onPressed: null,
                    minWidth: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      'Save',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.white),
                    ),
                    disabledColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget categoryDropdown(
      {context,
        initialValue,
        List<String> data,
        onChanged,
        @required hints,
        onValidate}) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: DropdownButtonFormField<String>(
            hint: Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: Text(hints),
            ),
            value: null,
            style: Theme.of(context)
                .textTheme
                .subtitle2
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black87),
            isDense: false,
            isExpanded: true,
            decoration: fieldDecoration(
              context: context,
            ),
            items: data != null
                ? data.map((e) {
              return DropdownMenuItem<String>(
                value: e,
                child: Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text(e,style: Theme.of(context).textTheme.subtitle2,),
                ),
              );
            }).toList()
                : null,
            onChanged: (payment) {
              onChanged(payment);
            }),
      ),
    );
  }
  InputDecoration fieldDecoration(
      {BuildContext context,
        String hintText,
        String helperText,
        Widget prefixIcon,
        Widget suffixIcon}) {
    return InputDecoration(
        contentPadding: EdgeInsets.all(6.0),
        hintText: hintText,
        helperText: helperText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 0.5,
            )),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
              width: 0.5,
            )));
  }
}

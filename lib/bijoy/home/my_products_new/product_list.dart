import 'package:flutter/material.dart';
import 'package:flutter_ui/config/SizeConfig.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
    @required this.status, this.title, this.price, this.available, this.productImage,
  }) : super(key: key);

  final bool status;
  final String title;
  final String price;
  final String available;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 2),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              productImage,
              width: 70,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  // maxLines: 1,
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      .copyWith(
                      fontSize:
                      SizeConfig.heightMultiplier * 2 + 3),
                ),
                SizedBox(
                  height: SizeConfig.heightMultiplier * 2,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      price,
                      style: Theme.of(context)
                          .textTheme
                          .caption
                          .copyWith(
                          color: Colors.red,
                          fontSize:
                          SizeConfig.heightMultiplier * 2 +
                              3,
                          fontWeight: FontWeight.w600),
                    ),
                    Spacer(),
                    Text(
                        available,
                        style: Theme.of(context)
                            .textTheme
                            .caption
                    ),
                    Container(
                      height: 20,
                      child: Switch(
                        value: status,
                        onChanged: (value) {
                          // setState(() {
                          //   isSwitched=value;
                          //   print(isSwitched);
                          // });
                        },
                        activeTrackColor: Color(0xFF00D748),
                        activeColor: Colors.white,
                      ),
                    ),

                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
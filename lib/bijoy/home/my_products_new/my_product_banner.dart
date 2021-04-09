import 'package:flutter/material.dart';

class MyProductBanner extends StatelessWidget {
  const MyProductBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Container(
        padding: EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: Color(0xFFFCF2BF),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Color(0xFFE8E7E0)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Try Catalog builder & create your catalog faster',
                style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xFF1E9748)),
              child: Text(
                'Try Now',
                style: Theme.of(context).textTheme.caption.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image.network(
                  'https://image.freepik.com/free-vector/business-enterprise-strategy-market-analysis-niche-selection-conquering-marketplace-studying-market-segmentation-planning-company-development_335657-2353.jpg'),
            ),
            Text(
              "You're all set!",
              style: Theme.of(context)
                  .textTheme
                  .caption
                  .copyWith(fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}

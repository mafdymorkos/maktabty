import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mktabte/main.dart';

import '../../../../core/theme/text_style.dart';
import '../widgets/custom_WL_header.dart';
import '../widgets/custom_wishlist_card.dart';

final List<Map<String, String>> wishListItems = [
  {
    "image": "assets/images/blackcontroller.png",
    "title": "Black Controller",
    "price": "\$150"
  },
  {
    "image": "assets/images/blackcontroller1.png",
    "title": "Black Controller",
    "price": "\$120"
  },
  {
    "image": "assets/images/whitecontroller.png",
    "title": "White Controller",
    "price": "\$200"
  },
  {
    "image": "assets/images/whitecontroller.png",
    "title": "White Controller",
    "price": "\$200"
  },
  {
    "image": "assets/images/whitecontroller.png",
    "title": "White Controller",
    "price": "\$200"
  },
];

class UserWishlist extends StatelessWidget {
  const UserWishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            CustomWlHeader(),
            // Wishlist Items
            Positioned(
              top: 188.h,
              left: (MediaQuery.of(context).size.width - 327.w) / 2,
              width: 327.w,
              height: 400.h,
              child: CustomWishlistCard()
            ),
          ],
        ),
      ),
    );
  }
}

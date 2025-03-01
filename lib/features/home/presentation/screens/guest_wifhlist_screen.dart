import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/text_style.dart';
import '../widgets/custom_WL_header.dart';
import '../widgets/custom_guest_trending_WL.dart';
import '../widgets/custom_guest_wishlist_card.dart';

final List<Map<String, String>> guestwishListItems = [
  {
    "image": "assets/images/wishlist_guest_book1.png",
    "title": "Large Book",
    "price": "EGP 150"
  },
  {
    "image": "assets/images/wishlist_guest_book2.png",
    "title": "English Dictionary",
    "price": "EGP 120"
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

class GuestWifhlistScreen extends StatelessWidget {
  const GuestWifhlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomWlHeader(),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Trending",
                    style: TextStyles.Lato12extraboldBlack,
                  ),
                ),
                const CustomGuestTrendingWl(),
                SizedBox(
                  height: 30.h,
                )
              ],
            ),
            Positioned(
                top: 170.h,
                left: (MediaQuery.of(context).size.width - 327.w) / 2,
                width: 327.w,
                height: 320.h,
                child: const CustomGuestWishlistCard())
          ],
        ),
      ),
    );
  }
}

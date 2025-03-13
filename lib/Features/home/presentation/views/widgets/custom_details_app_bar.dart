import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:movies_app/core/theming/styles.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              "assets/svg/arrow-left.svg",
              height: 20,
              width: 20,
            ),
          ),
          Text(
            "Detail",
            style: Styles.montserrat16semiBoldwhite,
          ),
          SvgPicture.asset(
            "assets/svg/top-bar-right.svg",
            height: 24,
            width: 18,
          )
        ],
      ),
    );
  }
}

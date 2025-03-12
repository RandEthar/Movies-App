import 'package:flutter/material.dart';
import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      indicatorWeight: 4,
      dividerColor: Colors.transparent,
      indicatorColor: ColorsManager.charcoalgray,
      labelPadding: const EdgeInsets.symmetric(vertical: 10),
      tabs: [
        Text(
          "About Movie",
          style: Styles.poppins14MediumWhite,
        ),
        Text("Reviews", style: Styles.poppins14MediumWhite),
        Text("Cast", style: Styles.poppins14MediumWhite)
      ],
    );
  }
}

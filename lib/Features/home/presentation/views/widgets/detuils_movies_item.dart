import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class DetuilsMovieItem extends StatelessWidget {
  const DetuilsMovieItem({super.key, required this.icon, required this.title});
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          height: 18,
          width: 18,
          fit: BoxFit.fill,
        ),
        horezontalSpace(6),
        Text(
          title,
          style: Styles.montserrat14MediumgrayishBlueGray,
        ),
      ],
    );
  }
}

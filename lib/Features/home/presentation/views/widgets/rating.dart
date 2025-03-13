import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/core/theming/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rating,
  });
  final double rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xff252836)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          children: [
            SvgPicture.asset(
              "assets/svg/stars.svg",
              height: 16,
              width: 16,
              fit: BoxFit.scaleDown,
            ),
            const Spacer(),
            Text(
              "${rating.toStringAsFixed(1)}",
              style: Styles.montserrat16semiBoldwhite
                  .copyWith(fontSize: 12, color: const Color(0xffFF8700)),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/colors.dart';

import 'package:movies_app/core/theming/styles.dart';

class ListViewLabelsItem extends StatelessWidget {
  const ListViewLabelsItem(
      {super.key, required this.categorie, required this.isSellectIndex});
  final String categorie;
  final bool isSellectIndex;
  @override
  Widget build(BuildContext context) {
    String text = categorie;
    double textWidth = _getTextWidth(text, Styles.poppins14MediumWhite);

    return Column(
      children: [
        Text(
          text,
          style: Styles.poppins14MediumWhite,
        ),
        verticalSpace(8),
        Visibility(
          visible: isSellectIndex,
          child: Container(
            height: 4,
            width: textWidth,
            decoration: const BoxDecoration(color: ColorsManager.charcoalgray),
          ),
        ),
      ],
    );
  }

  double _getTextWidth(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.width;
  }
}

List<String> categories = [
  "Now playing",
  "Upcoming",
  "Top rated",
  "Popular",
  "Trending"
];

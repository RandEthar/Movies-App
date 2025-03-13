


import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/cast_model.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class GridViewCastItem extends StatelessWidget {
  const GridViewCastItem({
    super.key, required this.castModel,
  });
final CastModel castModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration:  ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://image.tmdb.org/t/p/w500/${castModel.profilePath}"),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
              shape: CircleBorder()),
        ),
        verticalSpace(8),
        Text(
          castModel.name??"",
          style: Styles.poppins14MediumWhite.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
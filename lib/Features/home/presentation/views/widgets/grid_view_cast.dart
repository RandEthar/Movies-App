import 'package:flutter/material.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class GridViewCast extends StatelessWidget {
  const GridViewCast({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.7,
        ),
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://image.tmdb.org/t/p/w500/bTEFpaWd7A6AZVWOqKKBWzKEUe8.jpg"),
                      fit: BoxFit.cover,
                      alignment: Alignment.topCenter,
                    ),
                    shape: CircleBorder()),
              ),
              verticalSpace(8),
              Text(
                "Mark Wahlberg",
                style: Styles.poppins14MediumWhite.copyWith(fontSize: 12),
              )
            ],
          );
        });
  }
}

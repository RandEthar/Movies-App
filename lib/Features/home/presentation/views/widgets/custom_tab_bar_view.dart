import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/grid_view_cast.dart';
import 'package:movies_app/core/theming/styles.dart';

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
    required this.moviesModel,
  });

  final MoviesModel moviesModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Text(moviesModel.overview ?? "",
                style: Styles.poppins14MediumWhite),
            GridViewCast(),
            Text("فريق التمثيل", style: Styles.poppins14MediumWhite),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/core/routing/routes.dart';

class GridViewLabelsItem extends StatelessWidget {
  const GridViewLabelsItem({
    super.key,
    required this.moviesModel,
  });
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.detailsScreen,
            arguments: moviesModel);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network(
          "https://image.tmdb.org/t/p/w500/${moviesModel.posterPath}",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

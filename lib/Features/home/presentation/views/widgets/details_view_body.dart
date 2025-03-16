import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/contener_details_moveis.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/custom_tab_bar_view.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/custom_tap_bar.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/detuils_movies.dart';

import 'package:movies_app/core/helpers/spacing.dart';

import 'package:movies_app/core/theming/styles.dart';

class DetailsViewBody extends StatelessWidget {
  DetailsViewBody(
      {super.key, required this.moviesModel, required this.detauilsMovieModel});
  final MoviesModel moviesModel;
  final DetauilsMovieModel detauilsMovieModel;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          verticalSpace(20),
          const CustomDetailsAppBar(),
          verticalSpace(20),
          ContenerDetailsMoveis(
            moviesModel: moviesModel,
          ),
          Padding(
            padding:const  EdgeInsets.only(
              left: 140 , right: 29, top: 12),
            child: Text(
              moviesModel?.title ?? "",
              style: Styles.poppins18SemiBoldWhite,
            ),
          ),
          verticalSpace(45),
          DetuilsMovie(
            detauilsMovieModel: detauilsMovieModel,
          ),
          verticalSpace(40),
          CustomTabBar(movieId: moviesModel?.id??0,),
          verticalSpace(24),
          CustomTabBarView(moviesModel: moviesModel),
        ],
      ),
    );
  }
}

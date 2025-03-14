import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies_detuils/featch_movies_detuils_cubit.dart';
import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/styles.dart';

class CustomTabBar extends StatelessWidget {
  const CustomTabBar({
    super.key, required this.movieId,
  });
 final int movieId;
  @override
  Widget build(BuildContext context) {
    return TabBar(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      indicatorWeight: 4,
      dividerColor: Colors.transparent,
      indicatorColor: ColorsManager.charcoalgray,
      labelPadding: const EdgeInsets.symmetric(vertical: 10),
      onTap: (index){
          if(index==2){
            context.read<FeatchMoviesDetuilsCubit>().featchMoviesCast(movieId);
          }else if(index==1){
              context.read<FeatchMoviesDetuilsCubit>().featchReviews(movieId);
          }



      },
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

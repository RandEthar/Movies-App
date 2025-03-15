import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/presentation/maneger/cubit/search_cubit.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/row_detuils_movies.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class ListViewSearchItem extends StatelessWidget {
  const ListViewSearchItem({super.key, required this.moviesModel});
  final MoviesModel moviesModel;

  @override
  Widget build(BuildContext context) {
    List<String> year = moviesModel.releaseDate!.split("-");
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            height: 120,
            width: 95,
            fit: BoxFit.cover,
            imageUrl:
                "https://image.tmdb.org/t/p/w500/${moviesModel.posterPath}",
            placeholder: (context, url) => const Center(
              child: SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.grey,
                  )),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              color: Colors.red,
            ),
          ),
        ),
        horezontalSpace(12),
        BlocBuilder<SearchCubit, SearchState>(
          buildWhen: (previous, current) => current is FeatchMoviesDetuilsSuccess,
          builder: (context, state) {

            if (state is FeatchMoviesDetuilsSuccess){
              DetauilsMovieModel detauilsMovieModel=state.detauilsMovieModel; 
              return Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    moviesModel.originalTitle ?? "",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: Styles.poppins14RegularGreyShade.copyWith(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  verticalSpace(14),
                   RowDetuilsMoves(
                      icon: "assets/svg/Ticket.svg", text:detauilsMovieModel?.genres![0]?.name??""),
                  verticalSpace(4),
                  RowDetuilsMoves(
                      icon: "assets/svg/CalendarBlank.svg", text: year![0]),
                  verticalSpace(4),
                  RowDetuilsMoves(
                      icon: "assets/svg/Clock.svg", text: "${detauilsMovieModel.runtime} minutes"),
                ],
              ),
            );
            }
            return SizedBox();
          },
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies/featch_movies_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/grid_view_labels_item.dart';

class GridViewLabels extends StatelessWidget {
  const GridViewLabels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchMoviesCubit, FeatchMoviesState>(
      buildWhen: (previous, current) =>
          current is FilterMoviesLoading ||
          current is FilterMoviesSuccess ||
          current is FilterMoviesFalier,
      builder: (context, state) {
        if (state is FilterMoviesSuccess) {
          List<MoviesModel> listFilterCategoriesMoview = state.listFilterMoview;
          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listFilterCategoriesMoview.length,
            itemBuilder: (context, index) {
              return GridViewLabelsItem(
                moviesModel: listFilterCategoriesMoview[index],
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 13,
              mainAxisSpacing: 8,
              childAspectRatio: 0.7,
            ),
          );
        } else if (state is FilterMoviesFalier) {
          return Text("${state.errorMassage}");
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

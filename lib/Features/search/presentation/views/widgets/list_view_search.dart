import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/presentation/maneger/cubit/search_cubit.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/list_view_search_item.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/not_found_search.dart';

class ListViewSearch extends StatelessWidget {
  const ListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>
          current is FetchPopularSuccess ||
          current is SearchMoviesSuccess ||
          current is FetchPopularLoading ||
          current is SearchMoviesLoading ||
          current is FetchPopularFalier ||
          current is SearchMoviesFalier,
      builder: (context, state) {
        List<MoviesModel> listMovies = [];

     if (state is FetchPopularSuccess || state is SearchMoviesSuccess) {
  listMovies = (state as dynamic).listMovies ?? []; 
  
  if (listMovies.isEmpty) {
    return const Center(
      child: NotFound(),
    );
  }

  return ListView.builder(
    itemCount: listMovies.length,
    itemBuilder: (context, index) {
      if (index >= listMovies.length) {
        return const SizedBox(); 
      }

      return Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: ListViewSearchItem(moviesModel: listMovies[index]),
      );
    },
  );
}

        if (state is FetchPopularLoading || state is SearchMoviesLoading) {
          return const Center(
            child: SizedBox(height: 30, width: 30, child: CircularProgressIndicator(color: Colors.grey)),
          );
        } else if (state is FetchPopularFalier || state is SearchMoviesFalier) {
          return Center(
            child: Text(
              (state is FetchPopularFalier) ? state.errorMasseg: (state as SearchMoviesFalier).errorMasseg,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }

        return const SizedBox();
      },
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/presentation/maneger/cubit/search_cubit.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/list_view_search_item.dart';

class ListViewSearch extends StatelessWidget {
  const ListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (previous, current) =>  current is FetchPopularSuccess|| current is SearchMoviesSuccess||
     current is FetchPopularLoading|| current is SearchMoviesLoading||current is FetchPopularFalier||
     current is SearchMoviesFalier,
      builder: (context, state) {
        List<MoviesModel> listMovies = [];

        if (state is FetchPopularSuccess) {
          listMovies = state.listMovies; 
             return ListView.builder(
            itemCount: listMovies.length,
            itemBuilder: (context, index) {
                        context
        .read<SearchCubit>()
        .featchMoviesDetuils(listMovies[index]?.id ?? 0);
              return Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: ListViewSearchItem(moviesModel: listMovies[index]),
              );
            },
          );
        } else if (state is SearchMoviesSuccess) {
          listMovies = state.listMovies; 
             return ListView.builder(
            itemCount: listMovies.length,
            itemBuilder: (context, index) {
                 context
        .read<SearchCubit>()
        .featchMoviesDetuils(listMovies[index]?.id ?? 0);
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
              (state is FetchPopularFalier) ? state.errorMasseg : (state as SearchMoviesFalier).errorMasseg,
              style: const TextStyle(color: Colors.red),
            ),
          );
        }
       return  Text("rand");
      },
    );
  }
}


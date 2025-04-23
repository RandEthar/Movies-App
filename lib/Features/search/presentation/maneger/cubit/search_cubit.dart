

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
   TextEditingController nameController=TextEditingController();
  final SearchRepo searchRepo;
  featchPopularMovies() async {
  
    emit(FetchPopularLoading());
    var result = await searchRepo.featchPopularMovies();
    result.fold((error) {
      emit(FetchPopularFalier(errorMasseg: error.errorMessage));
    }, (data) {
      emit(FetchPopularSuccess(listMovies: data));
    });
  }
   searchMovies(String name) async {

    emit(SearchMoviesLoading());
    var result = await searchRepo.featchSearchMovies(name);
    result.fold((error) {
      emit(SearchMoviesFalier(errorMasseg: error.errorMessage));
    }, (data) {
      emit(SearchMoviesSuccess(listMovies: data));
    });
  }

    featchMoviesDetuils(int moviesId) async {
    var result = await searchRepo.featchDetauilsMovies(moviesId);
    emit( FeatchMoviesDetuilsLoading());
    result.fold(
        (errors) =>
            emit(FeatchMoviesDetuilsFaluir(errorMassage: errors.errorMessage)),
        (data) => emit(FeatchMoviesDetuilsSuccess(detauilsMovieModel: data)));

  
  }
}

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/Features/home/data/model/cast_model.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/data/repos/home_repo.dart';

part 'featch_movies_detuils_state.dart';

class FeatchMoviesDetuilsCubit extends Cubit<FeatchMoviesDetuilsState> {
  FeatchMoviesDetuilsCubit(this.homeRepo) : super(FeatchMoviesDetuilsInitial());
  final HomeRepo homeRepo;
  featchMoviesDetuils(int moviesId) async {
    var result = await homeRepo.featchDetauilsMovies(moviesId);
    emit(FeatchMoviesDetuilsLoading());
    result.fold(
        (errors) =>
            emit(FeatchMoviesDetuilsFaluir(errorMassage: errors.errorMessage)),
        (data) => emit(FeatchMoviesDetuilsSuccess(detauilsMovieModel: data)));

  
  }
    featchMoviesCast(int moviesId) async {
    var result = await homeRepo.featchMovieActors(moviesId);
 
    result.fold(
        (errors) =>
            emit(FeatchCastFaluir(errorMassage: errors.errorMessage)),
        (data) => emit(FeatchCastSuccess(listCastModel: data)));

  
  }
}

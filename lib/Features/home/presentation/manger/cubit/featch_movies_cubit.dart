import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/data/repos/home_repo.dart';

part 'featch_movies_state.dart';

class FeatchMoviesCubit extends Cubit<FeatchMoviesState> {
  FeatchMoviesCubit(this.homeRepo) : super(FeatchMoviesInitial());

 final HomeRepo homeRepo;


 featchMovies()async{
emit( FeatchMoviesLoading());
var result=await homeRepo.featchMovies("popular");

result.fold((errors)=>
emit( FeatchMoviesFalier(errorMassage: errors.errorMessage)),
 (data)=>emit(FeatchMoviesSuccess(listMoview: data)));











 }
}

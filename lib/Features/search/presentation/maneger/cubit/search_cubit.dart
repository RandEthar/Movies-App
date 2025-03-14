import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/data/repos/search_repo.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;
  featchPopularMovies() async {
    emit(SearchLoading());
    var result = await searchRepo.featchPopularMovies();
    result.fold((error) {
      emit(SearchFalier(errorMasseg: error.errorMessage));
    }, (data) {
      emit(SearchSuccess(listMovies: data));
    });
  }
}

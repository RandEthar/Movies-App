import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/presentation/maneger/cubit/search_cubit.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/list_view_search_item.dart';

class ListViewSearch extends StatelessWidget {
  const ListViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState>(
      buildWhen: (previous, current) => current is  SearchLoading||
      current is  SearchSuccess||
      current is  SearchFalier,
      builder: (context, state) {
       if (state is SearchSuccess) {
        List<MoviesModel> listMoves=state.listMovies;
          return ListView.builder(
            itemCount: listMoves.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.only(bottom: 24),
                child: ListViewSearchItem(moviesModel: listMoves[index],),
              );
            });
       } else if( state  is   SearchFalier){
          return Text(state.errorMasseg);
       }else{
        return const Center(child: SizedBox(height: 30,width: 30,
          child: CircularProgressIndicator(color: Colors.grey,)));
       }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/manger/cubit/featch_movies_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/list_view_movies_item.dart';

class ListViewMovies extends StatelessWidget {
  const ListViewMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchMoviesCubit,FeatchMoviesState>(
      builder: (context, state) {
        if (state is FeatchMoviesSuccess) {
          List<MoviesModel> movies=state.listMoview;
  return SizedBox(
    height: 250,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: movies.length,
      itemBuilder: (context, index) {
        return ListViewMoviesItems(
          moviesModel: movies[index],
          index: index,
        );
      },
    ),
  );
}else if(state is FeatchMoviesFalier){
 return Text("${state.errorMassage}");
}else{
return Center(child: CircularProgressIndicator());
}
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/review_model.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies_detuils/featch_movies_detuils_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/list_view_reviews_item.dart';

class ListviewReview extends StatelessWidget {
  const ListviewReview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatchMoviesDetuilsCubit, FeatchMoviesDetuilsState>(
      buildWhen: (previous, current) =>
          current is FeatchReviewSuccess || current is FeatchReviewFaluir,
      builder: (context, state) {
        if (state is FeatchReviewSuccess) {
          List<Review> listReviews = state.listReviews;
          return Expanded(
            child: ListView.builder(
                itemCount: listReviews.length,
                itemBuilder: (context, index) {
                  return  ListViewReviewsItem(review:listReviews[index] ,);
                }),
          );
        } else if (state is FeatchReviewFaluir) {
          return Center(child: Text(state.errorMassage));
        }
        return Text("rand");
      },
    );
  }
}

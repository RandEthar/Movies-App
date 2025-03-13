import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:movies_app/Features/home/presentation/manger/featch_movies/featch_movies_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/list_view_labels_item.dart';

class ListViewLables extends StatefulWidget {
  const ListViewLables({
    super.key,
  });

  @override
  State<ListViewLables> createState() => _ListViewLablesState();
}

class _ListViewLablesState extends State<ListViewLables> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: SizedBox(
        height: 41,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                      context
                          .read<FeatchMoviesCubit>()
                          .filterMovies(categories[index]);
                    },
                    child: ListViewLabelsItem(
                      categorie: categories[index],
                      isSellectIndex: currentIndex == index,
                    )),
              );
            }),
      ),
    );
  }
}

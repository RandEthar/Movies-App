import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/rating.dart';

class ContenerDetailsMoveis extends StatelessWidget {
  const ContenerDetailsMoveis({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18)),
            child:CachedNetworkImage(
        imageUrl: "https://image.tmdb.org/t/p/w500/${moviesModel.backdropPath}",
              height: 211,
              width: double.infinity,
              fit: BoxFit.cover,
        placeholder: (context, url) =>const  SizedBox(
          height: 25,width: 25,
          child: Center(child: CircularProgressIndicator(color: Colors.grey,))),
        errorWidget: (context, url, error) =>const Icon(Icons.error,color: Colors.red,),
     ),
  
            ),
        Positioned(
          left: 30,
          bottom: -60,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Image.network(
                "https://image.tmdb.org/t/p/w500/${moviesModel.posterPath}",
                height: 130,
                width: 95,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )),
        ),
        Positioned(
          right: 8,
          bottom: 10,
          child: Rating(
            rating: moviesModel.voteAverage ?? 0.0,
          ),
        )
      ],
    );
  }
}

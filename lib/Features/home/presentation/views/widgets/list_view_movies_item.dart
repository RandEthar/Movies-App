import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/styles.dart';
import 'package:cached_network_image/cached_network_image.dart';
class ListViewMoviesItems extends StatelessWidget {
  const ListViewMoviesItems({
    super.key,
    required this.index,
    required this.moviesModel,
  });
  final MoviesModel moviesModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 10),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CachedNetworkImage(
                height: 210,
              width: 145,
             fit: BoxFit.cover,
        imageUrl:"https://image.tmdb.org/t/p/w500/${moviesModel.posterPath}",
        placeholder: (context, url) => Container(

          color: Colors.red,
         
          child:const  Center(child:CircularProgressIndicator(
            color: ColorsManager.greyShade,
          )),
        ),
        errorWidget: (context, url, error) => Container(

          color: Colors.grey[700],
        
          child:const Icon(Icons.broken_image,color: Colors.white,),
        ),
     ),
          // ClipRRect(
          //   borderRadius: BorderRadius.circular(16),
          //   child: Image.network(
          //     "https://image.tmdb.org/t/p/w500/${moviesModel.posterPath}",
          //     height: 210,
          //     width: 145,
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Positioned(
            top: 120,
            left: -10,
            child: Text("${index + 1}",
                style: Styles.montserrat96semiBoldprimaryColor.copyWith(
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 2
                    ..color = Colors.blue,
                )),
          ),
          Positioned(
            top: 120,
            left: -10,
            child: Text("${index + 1}",
                style: Styles.montserrat96semiBoldprimaryColor),
          ),
        ],
      ),
    );
  }
}

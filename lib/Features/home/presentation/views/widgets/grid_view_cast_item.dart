


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/cast_model.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class GridViewCastItem extends StatelessWidget {
  const GridViewCastItem({
    super.key, required this.castModel,
  });
final CastModel castModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            Container(
          width: 100,
          height: 100,
          decoration:const ShapeDecoration(
           
            shape: OvalBorder(),
          ),child: ClipRRect(

            borderRadius: BorderRadius.circular(50),
            child: CachedNetworkImage(
              fit:BoxFit.cover,
              alignment: Alignment.topCenter,
                imageUrl:"https://image.tmdb.org/t/p/w500/${castModel.profilePath}" ,          
                  placeholder: (context, url) =>const Center(child: SizedBox(height:25,width: 25,
                    child: CircularProgressIndicator(color: Colors.grey,))),
                     errorWidget: (context, url, error) => const Icon(Icons.person, size: 50, color: Colors.grey),
            ),
          ),
        ),
        verticalSpace(8),
        SizedBox(
              width: 120,
          height: 15,
          child: Text(
                  textAlign: TextAlign.center,
            castModel.name??"",
            style: Styles.poppins14MediumWhite.copyWith(fontSize: 12),
          ),
        )
      ],
    );
  }
}


//  image: DecorationImage(
//               image: NetworkImage("https://image.tmdb.org/t/p/w500/${castModel.profilePath}"),
//              fit:BoxFit.fitWidth,
//               alignment: Alignment.topCenter
//             ),
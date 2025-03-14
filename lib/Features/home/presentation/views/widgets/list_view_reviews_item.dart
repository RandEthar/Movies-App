import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/review_model.dart';

import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class ListViewReviewsItem extends StatelessWidget {
  const ListViewReviewsItem({super.key, required this.review});
    final  Review review;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Image.asset("assets/images/persons.png",height: 44,width: 44,fit: BoxFit.cover,),
              verticalSpace(12),
              Text(
           review.authorDetails.rating.toString(),
                style: Styles.poppins12MediumBlueAccent,
              )
            ],
          ),
          horezontalSpace(12),
          Expanded(
            child: Column(
              
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                 review.authorDetails.name,
                  style: Styles.poppins12MediumBlueAccent
                      .copyWith(color: Colors.white),
                ),
                verticalSpace(5),
                Text(
              review.content,
                  style: Styles.poppins14RegularGreyShade
                      .copyWith(color: Colors.white, fontSize: 12),
               
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/row_detuils_movies.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';

class ListViewSearchItem extends StatelessWidget {
  const ListViewSearchItem({super.key, required this.moviesModel});
      final  MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.network("https://image.tmdb.org/t/p/w500/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
        height:120 ,width: 95,fit:BoxFit.cover,),
      ),horezontalSpace(12),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Spiderman",style: Styles.poppins14RegularGreyShade.copyWith(
          fontSize: 16,color: Colors.white
        ),),verticalSpace(14),
      const  RowDetuilsMoves(icon:"assets/svg/Ticket.svg" ,text: "Action",),
      verticalSpace(4),
       const  RowDetuilsMoves(icon: "assets/svg/CalendarBlank.svg",text: "2019",),
       verticalSpace(4),
        const  RowDetuilsMoves(icon:"assets/svg/Clock.svg" ,text: "139 minutes",),
      ],)
    ],);
  }
}
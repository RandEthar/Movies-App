import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/detauils_movie_model/detauils_movie_model.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/detuils_movies_item.dart';
import 'package:movies_app/core/theming/colors.dart';

class DetuilsMovie extends StatelessWidget {
  const DetuilsMovie({super.key, required this.detauilsMovieModel});
  final DetauilsMovieModel detauilsMovieModel;
  @override
  Widget build(BuildContext context) {
    List<String> date = detauilsMovieModel.releaseDate!.split("-");

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DetuilsMovieItem(
            title: "${date[0]}",
            icon: "assets/svg/CalendarBlank.svg",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: 16,
              width: 1,
              color: ColorsManager.grayishBlueGray,
            ),
          ),
          DetuilsMovieItem(
            title: "${(detauilsMovieModel?.runtime ?? 12)} Minutes",
            icon: "assets/svg/Clock.svg",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              height: 16,
              width: 1,
              color: ColorsManager.grayishBlueGray,
            ),
          ),
          DetuilsMovieItem(
            title: (detauilsMovieModel?.genres != null &&
                    detauilsMovieModel!.genres!.isNotEmpty)
                ? detauilsMovieModel?.genres![0].name ?? ""
                : "Unknown",
            icon: "assets/svg/Ticket.svg",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/detuils_movies_item.dart';
import 'package:movies_app/core/theming/colors.dart';

class DetuilsMovie extends StatelessWidget {
  const DetuilsMovie({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DetuilsMovieItem(
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
          const DetuilsMovieItem(
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
          const DetuilsMovieItem(
            icon: "assets/svg/Ticket.svg",
          ),
        ],
      ),
    );
  }
}

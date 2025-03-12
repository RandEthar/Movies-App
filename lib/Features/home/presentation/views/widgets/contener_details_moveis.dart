import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/rating.dart';

class ContenerDetailsMoveis extends StatelessWidget {
  const ContenerDetailsMoveis({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(18),
                bottomRight: Radius.circular(18)),
            child: Image.network(
              "https://image.tmdb.org/t/p/w500/9nhjGaFLKtddDPtPaX5EmKqsWdH.jpg",
              height: 211,
              width: double.infinity,
              fit: BoxFit.cover,
            )),
        Positioned(
          left: 30,
          bottom: -60,
          child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(18)),
              child: Image.network(
                "https://image.tmdb.org/t/p/w500/d8Ryb8AunYAuycVKDp5HpdWPKgC.jpg",
                height: 130,
                width: 95,
                fit: BoxFit.cover,
              )),
        ),
        const Positioned(
          right: 8,
          bottom: 10,
          child: Rating(),
        )
      ],
    );
  }
}

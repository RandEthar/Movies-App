

import 'package:flutter/material.dart';
import 'package:movies_app/core/theming/styles.dart';

class ListViewMovies extends StatelessWidget {
  const ListViewMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
       
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20,left: 10),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://image.tmdb.org/t/p/w500/7iMBZzVZtG0oBug4TfqDb9ZxAOa.jpg",
                    
                    height: 210,
                    width: 145,
                    fit: BoxFit.cover,
                  ),
                ),
                
                Positioned(
                top: 120,
                left: -10,
                  child: Text(
                    "${index + 1}",
                    style:Styles.montserrat96semiBoldprimaryColor.copyWith(
                       foreground: Paint()
          ..style = PaintingStyle.stroke
          ..strokeWidth = 2
          ..color = Colors.blue, 
                    )
                  ),
                ),
                   Positioned(
                top: 120,
                left: -10,
                  child: Text(
                    "${index + 1}",
                    style:Styles.montserrat96semiBoldprimaryColor
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
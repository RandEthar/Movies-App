import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/grid_view_labels.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/list_view_lables.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/list_view_movies.dart';

import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/theming/styles.dart';
import 'package:movies_app/core/widgets/custom_text_form_field.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Text(
                "What do you want to watch?",
                style: Styles.poppins18SemiBoldWhite,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomTextFormField(),
            ),
            
           const  Padding(
              padding:EdgeInsets.only(left: 24,top: 21),
              child:ListViewMovies(),
            ),
            verticalSpace(24),
            const ListViewLables(),
            verticalSpace(10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17),
              child: GridViewLabels(),
            )
          ],
        ),
      ),
    );
  }
}




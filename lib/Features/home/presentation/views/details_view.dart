import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/details_view_body.dart';
import 'package:movies_app/core/theming/colors.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.moviesModel});
  final MoviesModel moviesModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: SafeArea(
          child: DetailsViewBody(
        moviesModel: moviesModel,
      )),
    );
  }
}

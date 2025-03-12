import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/details_view_body.dart';
import 'package:movies_app/core/theming/colors.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: SafeArea(child: DetailsViewBody()),
    );
  }
}

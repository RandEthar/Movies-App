import 'package:flutter/material.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/search_body.dart';
import 'package:movies_app/core/theming/colors.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: SearchBody(),
    );
  }
}

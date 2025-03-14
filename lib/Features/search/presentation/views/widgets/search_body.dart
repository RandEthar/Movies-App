import 'package:flutter/material.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/custom_app_bar_search.dart';
import 'package:movies_app/Features/search/presentation/views/widgets/list_view_search.dart';
import 'package:movies_app/core/helpers/spacing.dart';
import 'package:movies_app/core/widgets/custom_text_form_field.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          verticalSpace(20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: CustomAppBarSearch(),
          ),
          verticalSpace(26),
          const Padding(
            padding: EdgeInsets.only(left: 29, right: 15),
            child: CustomTextFormField(),
          ),
          verticalSpace(24),
         const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 29),
              child: ListViewSearch(),
            ),
          )
        ],
      ),
    );
  }
}

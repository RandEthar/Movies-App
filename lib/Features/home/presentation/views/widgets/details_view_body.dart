import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/contener_details_moveis.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/custom_tap_bar.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/detuils_movies.dart';
import 'package:movies_app/Features/home/presentation/views/widgets/grid_view_cast.dart';
import 'package:movies_app/core/helpers/spacing.dart';

import 'package:movies_app/core/theming/styles.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          verticalSpace(20),
          const CustomDetailsAppBar(),
          verticalSpace(20),
          const ContenerDetailsMoveis(),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .1, top: 12),
            child: Text(
              "Spiderman No Way\n Home",
              style: Styles.poppins18SemiBoldWhite,
            ),
          ),
          verticalSpace(20),
          const DetuilsMovie(),
          verticalSpace(40),
          const CustomTabBar(),
          verticalSpace(24),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                      style: Styles.poppins14MediumWhite),
                  GridViewCast(),
                  Text("فريق التمثيل", style: Styles.poppins14MediumWhite),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

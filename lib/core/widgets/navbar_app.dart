import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movies_app/Features/Watch_list/presentation/views/watch_list_views.dart';
import 'package:movies_app/Features/home/data/repos/home_repo_Impel.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies/featch_movies_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/home_view.dart';
import 'package:movies_app/Features/search/data/repos/search_repo_imple.dart';
import 'package:movies_app/Features/search/presentation/maneger/cubit/search_cubit.dart';
import 'package:movies_app/Features/search/presentation/views/search_view.dart';
import 'package:movies_app/core/helpers/spacing.dart';

import 'package:movies_app/core/theming/colors.dart';
import 'package:movies_app/core/theming/styles.dart';
import 'package:movies_app/core/utils/services_locator.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class NavbarApp extends StatefulWidget {
  const NavbarApp({super.key});

  @override
  State<NavbarApp> createState() => _NavbarAppState();
}

class _NavbarAppState extends State<NavbarApp> {
  PageController controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: screens.length,
          controller: controller,
          itemBuilder: (context, index) {
            return screens[index];
          }),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 78,
        decoration: const BoxDecoration(
            border: Border(
                top: BorderSide(color: ColorsManager.blueAccent, width: 1.7)),
            color: ColorsManager.primaryColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(icons.length, (index) {
              return GestureDetector(
                child: bottomNavBarItem(
                    context: context,
                    label: labels[index],
                    icon: icons[index],
                    index: index),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget bottomNavBarItem({
    required BuildContext context,
    required String label,
    required String icon,
    required int index,
  }) {
    return ZoomTapAnimation(
      onTap: () {
        setState(() {
          currentPage = index;
        });
        controller.jumpToPage(index);
      },
      begin: 1.0,
      end: 1.2,
      child: Column(
        children: [
          SvgPicture.asset(
            icon,
            height: 28,
            width: 28,
            colorFilter: ColorFilter.mode(
              index == currentPage
                  ? ColorsManager.blueAccent
                  : ColorsManager.greyShade,
              BlendMode.srcIn,
            ),
          ),
          verticalSpace(6),
          Text(
            label,
            style: Styles.roboto12RegularGray.copyWith(
                color: index == currentPage
                    ? ColorsManager.blueAccent
                    : ColorsManager.greyShade),
          )
        ],
      ),
    );
  }
}

List<String> icons = [
  "assets/svg/Home.svg",
  "assets/svg/Search.svg",
  "assets/svg/Bookmark.svg"
];

List<String> labels = ["Home", "Search", "Watch list"];

List<Widget> screens = [
  BlocProvider(
    create: (context) {
      final cubit = FeatchMoviesCubit(getIt.get<HomeRepoImpel>());
      cubit.featchMovies();
      cubit.filterMovies("Now playing");
      return cubit;
    },
    child: const HomeView(),
  ),
  BlocProvider(
    create: (context) => SearchCubit(getIt<SearchRepoImple>())..featchPopularMovies(),
    child: const SearchView(),
  ),
  const WatchList(),
];

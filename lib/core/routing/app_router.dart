import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';
import 'package:movies_app/Features/home/data/repos/home_repo_Impel.dart';
import 'package:movies_app/Features/home/presentation/manger/featch_movies_detuils/featch_movies_detuils_cubit.dart';
import 'package:movies_app/Features/home/presentation/views/details_view.dart';
import 'package:movies_app/Features/home/presentation/views/home_view.dart';
import 'package:movies_app/core/routing/routes.dart';
import 'package:movies_app/core/utils/services_locator.dart';
import 'package:movies_app/core/widgets/navbar_app.dart';

class AppRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.detailsScreen:
        return MaterialPageRoute(builder: (_) {
          MoviesModel moviesModel = settings.arguments as MoviesModel;
          return BlocProvider(
            create: (context) =>
                FeatchMoviesDetuilsCubit(getIt.get<HomeRepoImpel>())
                  ..featchMoviesDetuils(moviesModel?.id ?? 1126166),
            child: DetailsView(
              moviesModel: moviesModel,
            ),
          );
        });
      case Routes.navebarScreen:
        return MaterialPageRoute(builder: (_) => const NavbarApp());
      default:
        return null;
    }
  }
}

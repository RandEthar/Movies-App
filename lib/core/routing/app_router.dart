import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/presentation/views/home_view.dart';
import 'package:movies_app/core/routing/routes.dart';
import 'package:movies_app/core/widgets/navbar_app.dart';

class AppRouter {
static  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
  case Routes.navebarScreen:
        return MaterialPageRoute(builder: (_) => const NavbarApp());
      default:
        return null;
    }
  }
}

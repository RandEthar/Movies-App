import 'package:flutter/material.dart';
import 'package:movies_app/core/routing/app_router.dart';
import 'package:movies_app/core/routing/routes.dart';
import 'package:movies_app/core/widgets/navbar_app.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.navebarScreen,
      onGenerateRoute: AppRouter.generateRoute,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavbarApp(),
    );
  }
}

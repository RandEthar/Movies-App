import 'package:flutter/material.dart';
import 'package:movies_app/Features/home/data/local/hive_services.dart';
import 'package:movies_app/core/routing/app_router.dart';
import 'package:movies_app/core/routing/routes.dart';
import 'package:movies_app/core/utils/services_locator.dart';
import 'package:movies_app/core/widgets/navbar_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HiveServisces.init();
  setUp();
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
      title: 'Movies App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NavbarApp(),
    );
  }
}

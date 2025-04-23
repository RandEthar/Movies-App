import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:movies_app/Features/home/data/model/movies_model.dart';

class HiveServisces {
  static const String movesBoxName = "movesBox";

  static Future<void> init() async {
    await Hive.initFlutter();
HiveAdapters.registerAdapters();
    await Hive.openBox<MoviesModel>(movesBoxName);
  }
static Future<void> cachMovies(List<MoviesModel> movies) async {
  final box = Hive.box<MoviesModel>(movesBoxName);


  for (int i = 0; i < movies.length; i++) {
    await box.put(i, movies[i]);
  }
}

static List<MoviesModel> getCachedMovies() {
  final box = Hive.box<MoviesModel>(movesBoxName);
  return box.values.toList();
}

  // static Future<void> cachMovies(List<MoviesModel> movie) async {
  //   final box = Hive.box<MoviesModel>(movesBoxName);
  //   await box.put("cachMovies", movie);
  // }

  // static MoviesModel? getCachedMovies(MoviesModel movie) {
  //   final box = Hive.box<MoviesModel>(movesBoxName);
  //   return box.get("cachMovies");
  // }
}

class HiveAdapters {
  static void registerAdapters() {
    Hive.registerAdapter(MoviesModelAdapter());
  }
}

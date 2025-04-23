

import 'package:hive/hive.dart';
part 'movies_model.g.dart';
@HiveType(typeId:0)
class MoviesModel extends HiveObject{
  @HiveField(0)
  bool? adult;
   @HiveField(1)
  String? backdropPath;
   @HiveField(2)
  List<dynamic>? genreIds;
   @HiveField(3)
  int? id;
   @HiveField(4)
  String? originalLanguage;
   @HiveField(5)
  String? originalTitle;
   @HiveField(6)
  String? overview;
   @HiveField(7)
  double? popularity;
   @HiveField(8)
  String? posterPath;
   @HiveField(9)
  String? releaseDate;
   @HiveField(10)
  String? title;
   @HiveField(11)
  bool? video;
   @HiveField(12)
  double? voteAverage;
   @HiveField(13)
  int? voteCount;

  MoviesModel({
    this.adult,
    this.backdropPath,
    this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
        adult: json['adult'] as bool?,
        backdropPath: json['backdrop_path'] as String?,
        genreIds: json['genre_ids'] as List<dynamic>?,
        id: json['id'] as int?,
        originalLanguage: json['original_language'] as String?,
        originalTitle: json['original_title'] as String?,
        overview: json['overview'] as String?,
        popularity: (json['popularity'] as num?)?.toDouble(),
        posterPath: json['poster_path'] as String?,
        releaseDate: json['release_date'] as String?,
        title: json['title'] as String?,
        video: json['video'] as bool?,
        voteAverage: (json['vote_average'] as num?)?.toDouble(),
        voteCount: json['vote_count'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'genre_ids': genreIds,
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount,
      };
}

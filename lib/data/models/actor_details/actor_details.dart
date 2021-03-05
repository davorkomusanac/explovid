import 'package:explovid/data/models/movie_search/movie_summary.dart';
import 'package:explovid/data/models/tv_show_search/tv_show_summary.dart';

class ActorDetails {
  ActorDetails({
    this.adult,
    this.biography,
    this.birthday,
    this.deathday,
    this.gender,
    this.homepage,
    this.id,
    this.imdbId,
    this.knownForDepartment,
    this.name,
    this.placeOfBirth,
    this.popularity,
    this.profilePath,
    this.movieCredits,
    this.tvCredits,
    this.errorMessage,
  });

  final bool adult;
  final String biography;
  final String birthday;
  final String deathday;
  final int gender;
  final String homepage;
  final int id;
  final String imdbId;
  final String knownForDepartment;
  final String name;
  final String placeOfBirth;
  final num popularity;
  final String profilePath;
  //Appended responses
  final MovieCredits movieCredits;
  final TvCredits tvCredits;
  //added errorMessage
  final String errorMessage;

  factory ActorDetails.fromJson(Map<String, dynamic> json) => ActorDetails(
        adult: json["adult"] as bool ?? false,
        biography: json["biography"] as String ?? '',
        birthday: json["birthday"] as String ?? '',
        deathday: json["deathday"] as String ?? '',
        gender: json["gender"] as int ?? 0,
        homepage: json["homepage"] as String ?? '',
        id: json["id"] as int ?? 0,
        imdbId: json["imdb_id"] as String ?? '',
        knownForDepartment: json["known_for_department"] as String ?? '',
        name: json["name"] as String ?? '',
        placeOfBirth: json["place_of_birth"] as String ?? '',
        popularity: json["popularity"] as num ?? 0,
        profilePath: json["profile_path"] as String ?? '',
        movieCredits: json["movie_credits"] != null
            ? MovieCredits.fromJson(
                json["movie_credits"],
              )
            : MovieCredits(cast: [], crew: []),
        tvCredits: json["tv_credits"] != null
            ? TvCredits.fromJson(
                json["tv_credits"],
              )
            : TvCredits(cast: [], crew: []),
        errorMessage: "",
      );

  Map<String, dynamic> toJson() => {
        "adult": adult,
        "biography": biography,
        "birthday": birthday,
        "deathday": deathday,
        "gender": gender,
        "homepage": homepage,
        "id": id,
        "imdb_id": imdbId,
        "known_for_department": knownForDepartment,
        "name": name,
        "place_of_birth": placeOfBirth,
        "popularity": popularity,
        "profile_path": profilePath,
        "movie_credits": movieCredits.toJson(),
        "tv_credits": tvCredits.toJson(),
      };
}

class MovieCredits {
  MovieCredits({
    this.cast,
    this.crew,
  });

  final List<MovieCreditsCast> cast;
  final List<MovieCreditsCrew> crew;

  factory MovieCredits.fromJson(Map<String, dynamic> json) => MovieCredits(
        cast: List<MovieCreditsCast>.from(json["cast"].map((x) => MovieCreditsCast.fromJson(x))),
        crew: List<MovieCreditsCrew>.from(json["crew"].map((x) => MovieCreditsCrew.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cast": List<dynamic>.from(cast.map((x) => x.toJson())),
        "crew": List<dynamic>.from(crew.map((x) => x.toJson())),
      };
}

class MovieCreditsCast {
  MovieCreditsCast({
    this.character,
    this.movieSummary,
  });

  final MovieSummary movieSummary;
  final String character;

  factory MovieCreditsCast.fromJson(Map<String, dynamic> json) => MovieCreditsCast(
        movieSummary: MovieSummary.fromJson(json),
        character: json["character"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "character": character,
        //toJson movieSummary but it has no key in api?
        "movieSummary": movieSummary.toJson(),
      };
}

class MovieCreditsCrew {
  MovieCreditsCrew({
    this.department,
    this.movieSummary,
    this.job,
  });

  final MovieSummary movieSummary;
  final String department;
  final String job;

  factory MovieCreditsCrew.fromJson(Map<String, dynamic> json) => MovieCreditsCrew(
        movieSummary: MovieSummary.fromJson(json),
        department: json["department"] as String ?? '',
        job: json["job"] as String ?? '',
      );

  Map<String, dynamic> toJson() => {
        "department": department,
        "movieSummary": movieSummary.toJson(),
        "job": job,
      };
}

class TvCredits {
  TvCredits({
    this.cast,
    this.crew,
  });

  final List<TvCreditsCast> cast;
  final List<TvCreditsCrew> crew;

  factory TvCredits.fromJson(Map<String, dynamic> json) => TvCredits(
        cast: List<TvCreditsCast>.from(json["cast"].map((x) => TvCreditsCast.fromJson(x))),
        crew: List<TvCreditsCrew>.from(json["crew"].map((x) => TvCreditsCrew.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "cast": List<dynamic>.from(cast.map((x) => x.toJson())),
        "crew": List<dynamic>.from(crew.map((x) => x.toJson())),
      };
}

class TvCreditsCast {
  TvCreditsCast({this.character, this.tvShowSummary, this.episodeCount});

  final String character;
  final TvShowSummary tvShowSummary;
  final int episodeCount;

  factory TvCreditsCast.fromJson(Map<String, dynamic> json) => TvCreditsCast(
        tvShowSummary: TvShowSummary.fromJson(json),
        character: json["character"] as String ?? '',
        episodeCount: json["episode_count"] as int ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "character": character,
        "tvShowSummary": tvShowSummary.toJson(),
        "episode_count": episodeCount,
      };
}

class TvCreditsCrew {
  TvCreditsCrew({
    this.department,
    this.job,
    this.episodeCount,
    this.tvShowSummary,
  });

  final String department;
  final String job;
  final int episodeCount;
  final TvShowSummary tvShowSummary;

  factory TvCreditsCrew.fromJson(Map<String, dynamic> json) => TvCreditsCrew(
        tvShowSummary: TvShowSummary.fromJson(json),
        department: json["department"] as String ?? '',
        job: json["job"] as String ?? '',
        episodeCount: json["episode_count"] as int ?? 0,
      );

  Map<String, dynamic> toJson() => {
        "department": department,
        "tvShowSummary": tvShowSummary.toJson(),
        "job": job,
        "episode_count": episodeCount,
      };
}

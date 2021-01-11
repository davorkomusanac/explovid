import 'package:explovid/domain/models/movie_search/movie_summary.dart';

class MovieSearchResults {
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MovieSummary> movieSummaries;
  final String errorMessage;

  MovieSearchResults({
    this.page,
    this.totalResults,
    this.totalPages,
    this.movieSummaries,
    this.errorMessage,
  });

  factory MovieSearchResults.fromJson(Map<String, dynamic> json, int page) {
    if ((json['total_results'] ??= 0) == 0) {
      return MovieSearchResults(
        totalResults: 0,
        page: page,
        movieSummaries: [],
        errorMessage: "No results found.",
      );
    }

    final List<MovieSummary> movies = [];

    for (final result in json['results']) {
      movies.add(
        MovieSummary(
          posterPath: result['poster_path'] as String ?? '',
          overview: result['overview'] as String ?? '',
          releaseDate: result['release_date'] as String ?? 'Release date unknown',
          genreIds: result['genre_ids']?.cast<num>() ?? <num>[],
          id: result['id'] as int ?? 0,
          title: result['title'] as String ?? '',
          backdropPath: result['backdrop_path'] as String ?? '',
          popularity: result['popularity'] as num ?? 0,
        ),
      );
    }

    return MovieSearchResults(
      page: page,
      totalResults: json['total_results'] as int ?? 0,
      totalPages: json['total_pages'] as int ?? 0,
      movieSummaries: movies,
      errorMessage: "",
    );
  }
  Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(movieSummaries.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
        "errorMessage": errorMessage,
      };
}

import 'package:explovid/domain/models/movie_search/movie_summary.dart';

class MovieSearchResults {
  final String title;
  final int page;
  final int totalResults;
  final int totalPages;
  final List<MovieSummary> movieSummaries;
  final String errorMessage;

  MovieSearchResults({
    this.title,
    this.page,
    this.totalResults,
    this.totalPages,
    this.movieSummaries,
    this.errorMessage,
  });

  factory MovieSearchResults.fromJson(String title, Map<String, dynamic> json, int page) {
    if ((json['total_results'] ??= 0) == 0) {
      return MovieSearchResults(
        totalResults: 0,
        title: title,
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
          genreIds: result['genre_ids']?.cast<num>(),
          id: result['id'] as int,
          title: result['title'] as String ?? '',
          backdropPath: result['backdrop_path'] as String ?? '',
          popularity: result['popularity'] as num,
        ),
      );
    }

    return MovieSearchResults(
      title: title,
      page: page,
      totalResults: json['total_results'] as int,
      totalPages: json['total_pages'] as int,
      movieSummaries: movies,
      errorMessage: "",
    );
  }
}

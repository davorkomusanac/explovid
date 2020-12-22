class MovieSummary {
  final String posterPath;
  final String overview;
  final String releaseDate;
  final List<num> genreIds;
  final int id;
  final String title;
  final String backdropPath;
  final num popularity;

  MovieSummary({
    this.posterPath,
    this.overview,
    this.releaseDate,
    this.genreIds,
    this.id,
    this.title,
    this.backdropPath,
    this.popularity,
  });
}

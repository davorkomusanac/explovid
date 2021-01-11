class TvShowSummary {
  final String posterPath;
  final num popularity;
  final int id;
  final String backdropPath;
  final String overview;
  final String firstAirDate;
  final List<num> genreIds;
  final String name;

  TvShowSummary({
    this.posterPath,
    this.popularity,
    this.id,
    this.backdropPath,
    this.overview,
    this.firstAirDate,
    this.genreIds,
    this.name,
  });

  Map<String, dynamic> toJson() => {
        "poster_path": posterPath,
        "popularity": popularity,
        "id": id,
        "backdrop_path": backdropPath,
        "overview": overview,
        "first_air_date": firstAirDate,
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "name": name,
      };
}
